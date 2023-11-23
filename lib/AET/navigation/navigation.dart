import 'package:aet/AET/components/custom_navigation.dart';
import 'package:aet/AET/screens/fourth.dart';
import 'package:aet/AET/screens/home.dart';
import 'package:aet/AET/screens/second.dart';
import 'package:aet/AET/screens/third.dart';
import 'package:aet/controller/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() => runApp(navigation_home());


class navigation_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // GetX 컨트롤러 인스턴스를 생성합니다.
    final NavigationController navigationController = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => IndexedStack(
        index: navigationController.currentIndex.value,
        children: [
          homeMain(),
          second(),
          third(),
          fourth(),
        ],
      )),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: navigationController.currentIndex.value,
        onIndexChanged: navigationController.changeIndex,
      ),
    );
  }
}
