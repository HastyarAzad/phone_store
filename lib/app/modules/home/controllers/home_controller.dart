import 'package:get/get.dart';
import 'package:phone_store/app/modules/account/views/account_view.dart';
import 'package:phone_store/app/modules/favorate/views/favorate_view.dart';
import 'package:phone_store/app/modules/items/views/items_view.dart';
import 'package:phone_store/app/modules/shop/views/shop_view.dart';

class HomeController extends GetxController {

  RxInt pageIndex = 0.obs;
  RxString title = 'Phone Store'.obs;

  final pages = [
    ShopView(),
    FavorateView(),
    ItemsView(),
    AccountView(),
  ];

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
