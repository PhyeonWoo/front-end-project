import 'package:aet/AET/screens/homeMain.dart';
import 'package:aet/AET/screens/mypage.dart';
import 'package:aet/AET/screens/sports.dart';
import 'package:aet/controller/bottomnav_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class Navigation extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    double bottomSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => IndexedStack(
        index: bottomNavController.tabIndex.value,
        children: [
          HomeMain(),
          Sports(),
          MyPage(),
        ],
      )),
      bottomNavigationBar: Obx(() => Container(
        height: bottomSize* 0.12,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: bottomNavController.tabIndex.value,
          onTap: bottomNavController.changeTabIndex,
          unselectedItemColor: AppColor.lightGrey,
          selectedItemColor: AppColor.green,
          showUnselectedLabels: true,
          iconSize: 8,
          unselectedFontSize: 8,
          selectedFontSize: 8,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SvgPicture.asset('assets/images/home.svg'),
                ),
                label: "홈", activeIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset('assets/images/home.svg',color: AppColor.green,),
                )
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SvgPicture.asset('assets/images/location.svg'),
                ),
                label: "운동시설", activeIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset('assets/images/location.svg',color: AppColor.green,),
                )),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: SvgPicture.asset('assets/images/mypage.svg'),
                ),
                label: "마이페이지", activeIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset('assets/images/mypage.svg',color: AppColor.green,),
                ))
            //BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
          ],
        ),
      )),
    );
  }
}
