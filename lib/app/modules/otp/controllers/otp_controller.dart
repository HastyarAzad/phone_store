import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtpController extends GetxController {
  RxString title = 'OTP'.obs;
  final FirebaseAuth auth = FirebaseAuth.instance;
  RxString otp = ''.obs;

  void resendOTP() {
    Get.snackbar(
      'OTP',
      'OTP resent successfully',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Color(0xffFF7A00),
      colorText: Colors.white,
      margin: EdgeInsets.all(20),
      borderRadius: 10,
      duration: Duration(seconds: 3),
    );
  }

  void goToHome() async {
    if (otp.value.length != 6) {
      Get.snackbar('error', 'OTP must be 6 digits');
      return;
    }

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: Get.arguments["verificationId"],
      smsCode: otp.value,
    );

    // Sign the user in (or link) with the credential
    try {
      await auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("error", 'Could not sign in - ${e.message}');
      print(e.message);
      return;
    }
    // set the user as logged in in the shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('loggedIn', true);

    print(otp.value);
    Get.offAllNamed(Routes.HOME);
  }
  
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
