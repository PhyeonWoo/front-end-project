import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 45),
      child: Row( // Padding 위젯을 제거하고 바로 Row 위젯을 사용합니다.
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/images/ticket.svg',color: Colors.white,) ,
            iconSize: 30,
            onPressed: () {
              // Get.to(ThirdPage());
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/bookmark.svg',color: Colors.yellow,),
            iconSize: 30,
            onPressed: () {
              // Get.to(ThirdPage());
            },
          ),
        ],
      ),
    );
  }
}
