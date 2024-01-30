import 'package:aet/AET/profile/profile_photo.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      child: Container(
        width: screenWidth,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfilePhoto(),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "김우원님",
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.darkGrey,
                    ),
                  ),
                  Text(
                    "KBUCS2023@gmail.com",
                    style: TextStyle(
                      fontFamily: "Pretendard",
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.darkGrey,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "",//후기
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: AppColor.darkGrey,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "",//이용
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: AppColor.darkGrey,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Check counseling content');
                    },
                    child: Text(
                      "상담내용 확인하기",
                      style: TextStyle(
                        fontFamily: "Pretendard",
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        color: AppColor.lightGrey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
