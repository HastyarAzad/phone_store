import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../routes/app_pages.dart';

class ShopController extends GetxController {
  RxString title = 'Find Your Phone'.obs;

  RxList phones = [].obs;
  List<Map<String, dynamic>> originalList = [];

  Rx<RangeValues> currentRangeValues = RangeValues(50, 150).obs;

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
    {
      'name': 'Google Pixel 7',
      'image': 'assets/images/phone4.png',
      'price': 1199.99,
    },
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
    {
      'name': 'Google Pixel 7',
      'image': 'assets/images/phone4.png',
      'price': 1199.99,
    },
    {
      'name': 'iPhone 14',
      'image': 'assets/images/phone1.png',
      'price': 999.99,
    },
    {
      'name': 'iPhone 13',
      'image': 'assets/images/phone3.png',
      'price': 99.99,
    },
    {
      'name': 'Galaxy S21',
      'image': 'assets/images/phone2.png',
      'price': 899.99,
    },
    {
      'name': 'Google Pixel 7',
      'image': 'assets/images/phone4.png',
      'price': 1199.99,
    },
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
    {
      'name': 'Google Pixel 7',
      'image': 'assets/images/phone4.png',
      'price': 1199.99,
    },
  ];

  void goToItemDetails(int index) {
    // print(phonesList[index]);
    Get.toNamed(Routes.ITEM_DETAILS, arguments: phonesList[index]);
  }

  formatPrice(price) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(price);
  }

  void search(String value) {
    print(value);
    phones.value = phonesList.where((element) => element['name'].toLowerCase().contains(value.toLowerCase())).toList();
  }

  void filterResults() {
    // show a dialog box with options
    Get.defaultDialog(
      title: 'Sort By',
      content: Column(
        mainAxisSize: MainAxisSize.min, // Make the column wrap its content
        children: [
          ListTile(
            title: Text('Price'),
            onTap: () {
              // sort the phones list by price
              phonesList.sort((a, b) => a['price'].compareTo(b['price']));
              phones.value = List.from(phonesList); // Update the reactive variable with the sorted list
              Get.back(); // Close the dialog
            },
          ),
          ListTile(
            title: Text('Name'),
            onTap: () {
              // sort the phones list by name
              phonesList.sort((a, b) => a['name'].compareTo(b['name']));
              phones.value = List.from(phonesList); // Update the reactive variable with the sorted list
              Get.back(); // Close the dialog
            },
          ),
          ListTile(
            title: Text('All', style: TextStyle(color: Colors.blue)),
            onTap: () {
              // Reset the phones list to its original state
              phonesList = List.from(originalList); // Use the original copy
              phones.value = phonesList; // Update the reactive variable with the original list
              Get.back(); // Close the dialog
            },
          ),
        ],
      ),
    );
  }

  @override
  void onInit() {
    super.onInit();
    phones.value = phonesList;
    originalList = List.from(phonesList); // Keep a copy of the original list
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
