import 'package:flutter/material.dart';

class CustomAppbarProfile extends StatelessWidget implements PreferredSizeWidget {
  final String titleWrite;

  const CustomAppbarProfile({required this.titleWrite});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.1,
      centerTitle: true, // 타이틀을 중앙에 배치
      title: Text(
        titleWrite,
        style: TextStyle(
          color: Color.fromRGBO(79, 79, 79, 1),
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60); // AppBar의 높이를 설정
}
