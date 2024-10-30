import 'package:aet/controller/banner_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBanner extends StatelessWidget {
  final BannerController bannerController = Get.put(BannerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                PageView(
                  controller: bannerController.pageController,
                  onPageChanged: (int page) {
                    bannerController.changePage(page);
                  },
                  children: [
                    buildBanner('assets/images/banner_1.png', 0),
                    buildBanner('assets/images/banner_2.png', 1),
                    buildBanner('assets/images/banner_3.png', 2)
                  ],
                ),
                Obx(() => Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (i) => Container( // 배너
                      margin: EdgeInsets.fromLTRB(2,2,2,4),
                      width: 5.0,
                      height: 5.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: bannerController.currentPage.value == i
                            ? Color(0xFFffffff)
                            : Color(0xFFffffff).withOpacity(0.5),
                      ),
                    )),
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBanner(String assetPath, int index) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
