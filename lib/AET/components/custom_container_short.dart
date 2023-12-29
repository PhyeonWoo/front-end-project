import 'package:flutter/material.dart';

class CustomContainerShort extends StatelessWidget {
  final String text;
  final String textSub;

  const CustomContainerShort({required this.text, required this.textSub});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - (0.4 * screenWidth +5) - 25,
      height: 0.35 * screenWidth - 5,
      margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey, // 테두리 색상 설정
          width: 0.5, // 테두리 두께 설정
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // 그림자 색상
            spreadRadius: 1, // 그림자 확장 범위
            blurRadius: 10, // 그림자 흐림 정도
            offset: Offset(0, 0), // x, y 축에 대한 그림자 위치
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0,10,0,0),
            child: Text(text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(79,79,79,1))
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(textSub,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                    color: Color.fromRGBO(79, 79, 79, 1)
                )
            ),
          ),
        ],
      ),
    );
  }
}