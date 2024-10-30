import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomTicketListTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "번호",
          style: TextStyle(
            color: AppColor.darkGrey,
            fontFamily: "Pretendard",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "|",
          style: TextStyle(
            color: AppColor.ShadowLightWhite,
            fontFamily: "Pretendard",
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "운동시설",
          style: TextStyle(
            color: AppColor.darkGrey,
            fontFamily: "Pretendard",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "|",
          style: TextStyle(
            color: AppColor.ShadowLightWhite,
            fontFamily: "Pretendard",
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "날짜",
          style: TextStyle(
            color: AppColor.darkGrey,
            fontFamily: "Pretendard",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "|",
          style: TextStyle(
            color: AppColor.ShadowLightWhite,
            fontFamily: "Pretendard",
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "장소",
          style: TextStyle(
            color: AppColor.darkGrey,
            fontFamily: "Pretendard",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "|",
          style: TextStyle(
            color: AppColor.ShadowLightWhite,
            fontFamily: "Pretendard",
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "사용여부",
          style: TextStyle(
            color: AppColor.darkGrey,
            fontFamily: "Pretendard",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
