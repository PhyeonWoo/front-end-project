import 'package:aet/AET/payment/payment_page.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfilePointBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40, // 필요한 경우 여기서 높이 조정
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.Shadow,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0,0),
            )
          ]
      ),
      child: TextButton(
        onPressed: () {
          Get.to(() => PaymentWidgetExamplePage());
        },
        style: TextButton.styleFrom(
          fixedSize: Size(90,40),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        child: Text(
          "충전하기",
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColor.darkGreen,
            letterSpacing: -1,
          ),
        ),
      ),
    );
  }
}
