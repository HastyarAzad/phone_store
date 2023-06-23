import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';

class LoginController extends GetxController {
  RxString title = 'Login'.obs;

  void goToOTP() {
    Get.toNamed(Routes.OTP);
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
