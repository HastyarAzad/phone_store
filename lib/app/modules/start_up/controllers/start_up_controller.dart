import 'package:get/get.dart';
import 'package:phone_store/app/routes/app_pages.dart';

class StartUpController extends GetxController {
  RxString title = 'Welcome to'.obs;
  RxInt currentPage = 0.obs;

  void goToHomePage() {
    Get.offNamed(Routes.HOME);
  }

  void goToNextPage() {
    Get.toNamed(Routes.LOGIN);
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
