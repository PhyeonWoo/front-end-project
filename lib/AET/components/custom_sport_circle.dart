import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportsCircle extends StatelessWidget {
  final String textWrite;
  final Widget togo;
  final String imagePath;
  final double scale;

  const SportsCircle({
    required this.textWrite,
    required this.togo,
    required this.imagePath,
    this.scale = 1,
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
                scale: 1,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(
              textWrite,
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Pretendard",
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
