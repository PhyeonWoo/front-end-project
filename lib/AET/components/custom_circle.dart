import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePhoto extends StatelessWidget {
  final String textWrite;
  final Widget togo;
  final String imagePath;
  final double scale; // 이미지의 크기 조정을 위한 스케일 인자

  const ProfilePhoto({
    required this.textWrite,
    required this.togo,
    required this.imagePath,
    this.scale = 0.8, // 기본 스케일 값을 0.8로 설정
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Get.to(() => togo);
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: ClipOval(
              child: Transform.scale(
                scale: 0.7, // 여기서 이미지 크기를 조정
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover, // 이미지가 ClipOval에 꽉 차게
                ),
              ),
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
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
