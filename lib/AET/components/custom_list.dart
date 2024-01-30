import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomList extends StatelessWidget {
  final String textWrite;
  final Widget togo;

  const CustomList({required this.textWrite, required this.togo});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(() => togo); // GetX를 사용하여 HomePage로 이동
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0.5, // 버튼의 그림자를 제거
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textWrite,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
            Divider(
              color: Colors.transparent, // 구분선 색상
              height: 0, // 구분선 높이
              thickness: 0, // 구분선 두께
            ),
          ],
        ),
      ),
    );
  }
}
