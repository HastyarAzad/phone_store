import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountController extends GetxController {
  RxString title = "Account View".obs;
  RxBool loggedIn = false.obs;

  checkIfLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? loggedIn = prefs.getBool('loggedIn');
    if (loggedIn != null) {
      this.loggedIn.value = loggedIn;
    }
  }

  goToLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  @override
  void onInit() {
    super.onInit();
    checkIfLoggedIn();
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
