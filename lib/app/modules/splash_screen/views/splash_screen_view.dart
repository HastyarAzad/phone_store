import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX(
          init: SplashScreenController(),
          builder: (controller) {
            return Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: Get.width * 0.2,
                    height: Get.height * 0.4,
                    color: Color.fromARGB(255, 239, 148, 83).withOpacity(0.3),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: Get.width * 0.2,
                    height: Get.height * 0.42,
                    color: Color.fromARGB(255, 239, 148, 83).withOpacity(0.3),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 78,
                  child: Container(
                    width: Get.width * 0.27,
                    height: Get.height * 0.5,
                    color: Color.fromARGB(255, 239, 148, 83).withOpacity(0.3),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 79,
                  child: Container(
                    width: Get.width * 0.27,
                    height: Get.height * 0.5,
                    color: Color.fromARGB(255, 239, 148, 83).withOpacity(0.3),
                  ),
                ),
                Positioned(
                  top: Get.height * 0.45,
                  left: Get.width * 0.25,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        cursor: '|',
                        controller.title.value,
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    isRepeatingAnimation: true,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: Image.asset(
                        'assets/images/image.png',
                        height: Get.height * 0.5,
                        width: Get.width,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Transform.scale(
                      scale: 1,
                      child: Image.asset(
                        'assets/images/splash.png',
                        height: Get.height * 0.5,
                        width: Get.width,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
