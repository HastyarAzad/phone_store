import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';

class OtpController extends GetxController {
  RxString title = 'OTP'.obs;

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

  void goToHome() {
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
