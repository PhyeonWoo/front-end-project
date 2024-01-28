import 'package:aet/AET/payment/payment_page.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePointBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Get.to(() => PaymentWidgetExamplePage());
            },
            style: TextButton.styleFrom(
              fixedSize: Size(100,40),
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2), // 내부 패딩을 설정합니다.
              backgroundColor: Colors.white,
              elevation: 0, // 버튼 그림자를 없애려면 0을 설정합니다.
            ),
            child: Text(
              "충전하기",
              style: TextStyle(
                fontFamily: "Pretendard",
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.darkGreen, // TextStyle에서 색상을 지정한 경우, styleFrom의 onPrimary는 무시될 수 있습니다.
              ),
            ),
          ),

        ],
      ),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.Shadow,//색상
              spreadRadius: 3, //범위
              blurRadius: 3,//흐림
              offset: Offset(1,1),
            )
          ]
      ),
    );
  }
}
