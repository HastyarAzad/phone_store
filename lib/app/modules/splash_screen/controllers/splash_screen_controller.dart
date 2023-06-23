import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController {
  RxString title = 'Phone Store'.obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> checkIfFirstTime() async {
    // wait for 4 seconds
    await Future.delayed(const Duration(seconds: 4));

    // get the value of the key "first_time" from the local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = prefs.getBool('first_time') ?? true;
    // if it's the first time, set the value of the key "first_time" to false
    if (firstTime) {
      prefs.setBool('first_time', false);
      // go to the startup screen
      Get.offNamed(Routes.START_UP);
      return;
    }

    // if it's not the first time, go to the home screen
    Get.offNamed(Routes.HOME);
  }

  @override
  void onReady() {
    super.onReady();
    checkIfFirstTime();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
