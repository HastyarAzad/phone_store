import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: controller.pages[controller.pageIndex.value],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: GNav(
                tabs: [
                  GButton(
                    icon: Icons.home_outlined,
                    iconSize: 30,
                  ),
                  GButton(
                    icon: Icons.favorite_outline_sharp,
                    iconSize: 30,
                  ),
                  GButton(
                    icon: Icons.grid_view_outlined,
                    iconSize: 30,
                  ),
                  GButton(
                    icon: Icons.person_outline_outlined,
                    iconSize: 30,
                  ),
                ],
                backgroundColor: Colors.white,
                gap: 10,
                color: Color(0xffB4B4B4),
                activeColor: Color(0xffE56A36),
                iconSize: 20,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                duration: Duration(milliseconds: 200),
                tabBorderRadius: 10,
                curve: Curves.easeInOut,
                tabMargin: EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 0),
                selectedIndex: 0,
                onTabChange: (index) {
                  controller.pageIndex.value = index;
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
