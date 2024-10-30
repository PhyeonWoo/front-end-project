import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 45),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/images/onedayticket.svg'),
            color: Colors.white,
            iconSize: 30,
            onPressed: () {
              // Get.to(ThirdPage());
            },
          ),
          IconButton(
            icon: SvgPicture.asset('assets/images/book.svg'),
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
