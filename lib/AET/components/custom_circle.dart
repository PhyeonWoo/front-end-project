import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePhoto extends StatelessWidget {
  final String textWrite;
  final Widget togo;

  const ProfilePhoto({required this.textWrite,required this.togo});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(() => togo);
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent, // 버튼의 배경색을 투명하게 설정
        elevation: 0, // 버튼의 그림자를 제거
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), // 버튼의 모서리를 둥글게
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Column의 크기를 자식들 크기에 맞춤
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColor.Shadow, // 색상
                  spreadRadius: 1, // 범위
                  blurRadius: 5, // 흐림
                  offset: Offset(0, 0),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              textWrite,
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
