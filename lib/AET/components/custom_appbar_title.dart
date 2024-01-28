import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // GetX 라이브러리 import

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String titleWrite;
  final bool BackButton; // 뒤로 가기 버튼 표시 여부를 위한 매개변수

  const CustomAppbar({
    required this.titleWrite,
    this.BackButton = false, // 기본값은 false로 설정
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      shadowColor: Colors.black.withOpacity(0.2),
      centerTitle: true,

      // GetX를 사용하여 뒤로 가기 버튼을 조건부로 표시
      leading: BackButton ? IconButton(
        icon: Icon(Icons.arrow_back, color: AppColor.darkGrey),
        onPressed: () => Get.back(), // GetX의 back 메서드를 사용하여 뒤로 가기
      ) : null,

      title: Text(
        titleWrite,
        style: TextStyle(
          color: AppColor.darkGrey,
          fontFamily: 'customFonts',
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
