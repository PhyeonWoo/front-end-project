import 'package:aet/AET/profile/profile_point_box.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 132,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.green,
        boxShadow: [
          BoxShadow(
            color: AppColor.Shadow,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "짐보따리 잔여 포인트",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      letterSpacing: -1,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          color: AppColor.Shadow
                        )
                      ]
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    "50,000 포인트",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: -2,
                        shadows: [
                          Shadow(
                              offset: Offset(0, 0),
                              blurRadius: 5,
                              color: AppColor.Shadow
                          )
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "이번 달 만료예정 포인트 ",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                          letterSpacing: -1,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 5,
                                  color: AppColor.Shadow
                              )
                            ]
                        ),
                      ),
                      Text(
                        "50,000P",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 5,
                                  color: AppColor.Shadow
                              )
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ProfilePointBox(),
          ],
        ),
      ),
    );
  }
}