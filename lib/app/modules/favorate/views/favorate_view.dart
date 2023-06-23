import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/favorate_controller.dart';

class FavorateView extends GetView<FavorateController> {
  const FavorateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: FavorateController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Text(
                    controller.title.value,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.67,
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
                          height: Get.height * 0.3,
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
        );
      },
    );
  }
}
