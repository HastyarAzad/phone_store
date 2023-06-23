import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';

class LoginController extends GetxController {
  RxString title = 'Login'.obs;

  TextEditingController phoneController = TextEditingController();

  checkPhoneNumber(phoneNumber) {
    return (phoneNumber.length == 11);
  }

  void goToOTP() async {
    if (!checkPhoneNumber(phoneController.text)) {
      Get.snackbar('error', 'Please enter a valid phone number');
      return;
    }
    print(phoneController.text);
    // Get.toNamed(Routes.OTP);
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+964 ${phoneController.text}',
      verificationCompleted: (PhoneAuthCredential credential) {
        print('completed');
        Get.snackbar('success', 'verification completed');
      },
      verificationFailed: (FirebaseAuthException e) {
        Get.snackbar("error", e.message.toString());
        print(e.message.toString());
      },
      codeSent: (String verificationId, int? resendToken) {
        Get.toNamed(Routes.OTP, arguments: {
          "verificationId": verificationId,
          "phone": phoneController.text,
          "fromPage": "phoneAuth",
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        Get.snackbar('error', 'codeAutoRetrievalTimeout');
      },
    );
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
