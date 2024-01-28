import 'package:flutter/material.dart';
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
            icon: Icon(Icons.airplane_ticket_outlined),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {
              // Get.to(ThirdPage());
            },
          ),
          IconButton(
            icon: Icon(Icons.bookmark),
            color: Colors.yellow,
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
