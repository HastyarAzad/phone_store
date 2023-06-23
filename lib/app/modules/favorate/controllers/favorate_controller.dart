import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:phone_store/app/routes/app_pages.dart';

class FavorateController extends GetxController {

  RxString title = "Wishlist".obs;
  RxList phones = [].obs;
  List<Map<String, dynamic>> originalList = [];

  List phonesList = [
    {
      'name': 'iPhone 14',
      'image': 'assets/images/phone1.png',
      'price': 999.99,
    },
    {
      'name': 'iPhone 13',
      'image': 'assets/images/phone3.png',
      'price': 11999.99,
    },
    {
      'name': 'Galaxy S21',
      'image': 'assets/images/phone2.png',
      'price': 899.99,
    },
  ];

  void goToItemDetails(int index) {
    // print(phonesList[index]);
    Get.toNamed(Routes.ITEM_DETAILS, arguments: phonesList[index]);
  }

  formatPrice(price) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(price);
  }

  @override
  void onInit() {
    super.onInit();
    phones.value = phonesList;
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
