import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/item_details_controller.dart';

class ItemDetailsView extends GetView<ItemDetailsController> {
  const ItemDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: ItemDetailsController(),
      builder: (context) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: Get.height * 0.4,
                    width: Get.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          controller.image.value,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    height: Get.height * 0.05,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Color(0xffe56a36),
                    ),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.35,
                  child: Container(
                    height: Get.height * 0.65,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.title.value,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                controller.price.value,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffe56a36),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_border_rounded,
                                size: 30,
                                color: Color(0xffe56a36),
                              ),
                              Icon(
                                Icons.star_border_rounded,
                                size: 30,
                                color: Color(0xffe56a36),
                              ),
                              Icon(
                                Icons.star_border_rounded,
                                size: 30,
                                color: Color(0xffe56a36),
                              ),
                              Icon(
                                Icons.star_border_rounded,
                                size: 30,
                                color: Color(0xffe56a36),
                              ),
                              Icon(
                                Icons.star_border_rounded,
                                size: 30,
                                color: Color(0xffe56a36),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '(87)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffe56a36),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // add a row containing 3 images that are selectable
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Color(0xffe56a36),
                                        width: 2,
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/phone1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Regular',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      // border: Border.all(
                                      //   color: Color(0xffe56a36),
                                      //   width: 2,
                                      // ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/BG.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Plus',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      // color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      // border: Border.all(
                                      //   color: Color(0xffe56a36),
                                      //   width: 2,
                                      // ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/BG (1).png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    'Ultra',
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Text(
                            'Colors - Matte Olive Darb',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          // add a row of colors from which the user can select
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  // border: Border.all(
                                  //   color: Colors.black,
                                  //   width: 2,
                                  // ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff7B778E),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  // border: Border.all(
                                  //   color: Colors.black,
                                  //   width: 2,
                                  // ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xffB9B3AE),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  // border: Border.all(
                                  //   color: Colors.black,
                                  //   width: 2,
                                  // ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff268CA0),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                'Storage',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: Get.width * 0.02,
                              ),
                              // add a dropdown button to select storage between 64GB and 128GB and 256GB and 512GB
                              DropdownButton(
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 30,
                                  color: Color(0xffe56a36),
                                ),
                                style: TextStyle(
                                  color: Color(0xffe56a36),
                                  fontSize: 16,
                                ),
                                value: controller.storageValue.value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text('64GB'),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('128GB'),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('256GB'),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(
                                    child: Text('512GB'),
                                    value: 4,
                                  ),
                                ],
                                onChanged: (value) {
                                  controller.storageValue.value = value!;
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          // add a button saying Add To Cart
                          Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              color: Color(0xffe56a36),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
