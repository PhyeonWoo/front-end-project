import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomTicketList extends StatelessWidget {
  final int number;
  final String gymName;
  final String reservationTime;
  final String city;
  final String address;
  final bool dailyTicketUse;

  const CustomTicketList(
      {
        required this.number,
        required this.gymName,
        required this.reservationTime,
        required this.city,
        required this.address,
        required this.dailyTicketUse});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${number}",
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
          gymName,
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
          reservationTime,
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
          "${city} ${address}",
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
          dailyTicketUse ? "이용가능" : "이용완료",
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