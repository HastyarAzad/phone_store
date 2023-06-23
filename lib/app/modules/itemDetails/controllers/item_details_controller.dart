import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ItemDetailsController extends GetxController {
  RxString title = 'Item Details'.obs;
  RxString image = ''.obs;
  RxString price = ''.obs;

  RxInt storageValue = 1.obs;

  getValuesFromArguments() {
    title.value = Get.arguments['name'];
    image.value = Get.arguments['image'];
    price.value = NumberFormat.currency(locale: 'en_US', symbol: '\$').format(Get.arguments['price']);
  }

  @override
  void onInit() {
    super.onInit();
    getValuesFromArguments();
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
