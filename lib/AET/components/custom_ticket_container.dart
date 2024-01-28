import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 165,
      decoration: BoxDecoration(
        color: AppColor.green,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0,7,0,3),
            child: Text(
              "테니스",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Pretendard",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 130.75,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0,5,0,5),
                  child: Text(
                    "오전 8시 예정",
                    style: TextStyle(
                      color: AppColor.darkGrey,
                      fontFamily: "Pretendard",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,5,0,0),
                  child: Text(
                    "1번 코트",
                    style: TextStyle(
                      color: AppColor.darkGrey,
                      fontFamily: "Pretendard",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,5),
                  child: Text(
                    "24/01/03",
                    style: TextStyle(
                      color: AppColor.darkGrey,
                      fontFamily: "Pretendard",
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,5,0,0),
                  child: Text(
                    "노원 테니스장",
                    style: TextStyle(
                      color: AppColor.darkGrey,
                      fontFamily: "Pretendard",
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,10),
                  child: Text(
                    "노원구 상계동 엘지빌라",
                    style: TextStyle(
                      color: AppColor.darkGrey,
                      fontFamily: "Pretendard",
                      fontSize: 8,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
