import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_controller.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: OtpController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Get.height * 0.35,
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/image 3.png',
                      ),
                    ),
                    Container(
                      height: Get.height * 0.6,
                      width: Get.width,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xffFFEAE0),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 60),
                            child: Text(
                              controller.title.value,
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 66),
                            child: Text(
                              'Please enter the OTP',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Poppins',
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Pinput(
                              length: 6,
                              onChanged: (value) {},
                              closeKeyboardWhenCompleted: true,
                              keyboardType: TextInputType.number,
                              showCursor: true,
                              onCompleted: (pin) => {},
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                controller.goToHome();
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(Get.width, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                backgroundColor: Color(0xffE56A36),
                              ),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Didn\'t get OTP?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Poppins',
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                TextButton(
                                  onPressed: () {
                                    controller.resendOTP();
                                  },
                                  child: Text(
                                    'Send again',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      color: Color(0xffE44B29),
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
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
