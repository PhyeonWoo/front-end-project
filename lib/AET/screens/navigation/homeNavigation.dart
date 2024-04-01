import 'package:aet/AET/screens/homeMain.dart';
import 'package:aet/AET/screens/mypage.dart';
import 'package:aet/controller/bottomnav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: bottomNavController.tabIndex.value,
        children: [
          homeMain(),
          MyPage(),
          //GymListPage(),
        ],
      )),
      bottomNavigationBar: Obx(() => Container(
        height: 60,
        child: BottomNavigationBar(
          currentIndex: bottomNavController.tabIndex.value,
          onTap: bottomNavController.changeTabIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            //BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
          ],
        ),
      )),
    );
  }
}
