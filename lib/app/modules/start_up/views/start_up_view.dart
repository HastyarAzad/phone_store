import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/start_up_controller.dart';

class StartUpView extends GetView<StartUpController> {
  const StartUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: StartUpController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      controller.title.value,
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Phone Store',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        color: Color(0xffE56A36),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),

                  // add a slider with 4 pages
                  Container(
                    height: Get.height * 0.45,
                    child: PageView(
                      onPageChanged: (value) {
                        controller.currentPage.value = value;
                      },
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/startup_picture.png',
                                height: Get.height * 0.3,
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Text(
                                // 'this is a test example, if we make it 2 lines we will have a overflow',
                                'Welcome to Phone Store, the best place to buy your phone, we have the best price \nalong with the best quality',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/image 3.png',
                                height: Get.height * 0.3,
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Text(
                                "We support phone's accessories, we have the best price and the best quality",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/image.png',
                                height: Get.height * 0.3,
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Text(
                                'We have the best statistics for our customers, thier satisfaction is our priority',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/image 4.png',
                                height: Get.height * 0.3,
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Text(
                                'We have the best offers and discounts for our customers, we have the best price and the best quality',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(
                        () => Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: controller.currentPage.value == 0 ? Color(0xffE56A36) : Color.fromARGB(255, 255, 166, 83),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: controller.currentPage.value == 1 ? Color(0xffE56A36) : Color.fromARGB(255, 255, 166, 83),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: controller.currentPage.value == 2 ? Color(0xffE56A36) : Color.fromARGB(255, 255, 166, 83),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: controller.currentPage.value == 3 ? Color(0xffE56A36) : Color.fromARGB(255, 255, 166, 83),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  // create a button to go to the next page with the height of 60 and width of 237
                  Center(
                    child: InkWell(
                      onTap: () {
                        controller.goToNextPage();
                      },
                      child: Container(
                        height: 60,
                        width: Get.width * 0.9,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 241, 113, 58),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  // add a text that says don't want to sign up? Skip
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Don't want to sign up?",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            controller.goToHomePage();
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Color(0xffE56A36),
                            ),
                          ),
                        ),
                      ],
                    ),
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
