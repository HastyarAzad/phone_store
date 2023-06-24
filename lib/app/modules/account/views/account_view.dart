import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';
import 'my_drawer_header.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX<AccountController>(
        init: AccountController(),
        builder: (controller) {
          return SafeArea(
            child: !controller.loggedIn.value
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You are not logged in',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE56A36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              controller.goToLogin();
                            },
                            child: Text('login'),
                          ),
                        ),
                      ],
                    ),
                  )
            : Scaffold(
              appBar: AppBar(
                title: Text(
                  controller.title.value,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Color(0xffE56A36),
                elevation: 0,
              ),
              drawer: Drawer(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(children: [
                      MyHeaderDrawer(
                        userName: "Lucid Source",
                        imageUrl: "assets/images/splash.png",
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Color(0xffE56A36),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'permissions',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          // controller.goToRequestPermission();
                        },
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.privacy_tip,
                              color: Color(0xffE56A36),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'policies',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          // controller.openPrivacyPolicy();
                        },
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.contact_mail,
                              color: Color(0xffE56A36),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'contact us',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          // controller.openContactUs();
                        },
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: Color(0xffE56A36),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'logout',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          // controller.logOut();
                        },
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.delete,
                              color: Color(0xffE56A36),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'delete account',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          // controller.deleteAccount();
                        },
                      ),
                    ]),
                  ),
                ),
              ),
              backgroundColor: Colors.white,
              body: Container(
                width: Get.width,
                padding: EdgeInsets.only(left: 40, right: 40, top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "My Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/splash.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Hello lucid source",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "You have 12 orders",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
