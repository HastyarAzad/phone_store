import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/shop_controller.dart';

class ShopView extends GetView<ShopController> {
  const ShopView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: ShopController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppBar(
                      title: Text(controller.title.value),
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      leading: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.grid_view_rounded,
                          color: Colors.black,
                        ),
                      ),
                      // add an icon to the end of the appBar
                      actions: [
                        IconButton(
                          onPressed: () {
                            // clear shared preferences
                            SharedPreferences.getInstance().then((prefs) {
                              prefs.clear();
                            });
                            Get.snackbar(
                              'Clear Shared Preferences',
                              'Shared Preferences Cleared Successfully',
                              snackPosition: SnackPosition.BOTTOM,
                              backgroundColor: Color(0xffE56A36),
                              colorText: Colors.white,
                              duration: const Duration(seconds: 2),
                            );
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.bagShopping,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      controller.title.value,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Container(
                      height: Get.height * 0.09,
                      // width: Get.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment(0, 0),
                      decoration: BoxDecoration(
                        color: Color(0xffFFEAE0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Color(0xffE56A36),
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Container(
                            width: Get.width * 0.6,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: const TextStyle(
                                  color: Color(0xffE56A36),
                                ),
                              ),
                              onChanged: (value) {
                                controller.search(value);
                              },
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              controller.filterResults();
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.sliders,
                              color: Color(0xffE56A36),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: controller.phones.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            controller.goToItemDetails(index);
                          },
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            height: Get.height * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      height: Get.height * 0.2,
                                      width: Get.width,
                                      child: Image.asset(
                                        controller.phones[index]['image'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                    Positioned(
                                      bottom: 1,
                                      left: Get.width * 0.15,
                                      child: Container(
                                        height: Get.height * 0.038,
                                        width: Get.width * 0.13,
                                        decoration: BoxDecoration(
                                          color: Color(0xffE56A36),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    controller.phones[index]['name'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "${controller.formatPrice(controller.phones[index]['price'])}",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffE56A36),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
