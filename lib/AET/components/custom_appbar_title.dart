import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String titleWrite;

  const CustomAppbar({required this.titleWrite});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFffffff),
      elevation: 5,
      shadowColor: Color(0xFF000000).withOpacity(0.2),
      centerTitle: true, // 타이틀을 중앙에 배치
      title: Text(
        titleWrite,
        style: TextStyle(
          color: Color(0xff4F4F4F),
          fontFamily: 'customFonts',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60); // AppBar의 높이를 설정
}
