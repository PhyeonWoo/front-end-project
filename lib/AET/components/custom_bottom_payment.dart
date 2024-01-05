import 'package:flutter/material.dart';

class CustomOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      width: screenWidth,
      decoration: BoxDecoration(
          color: Color(0xFFFBFBFB), // 여기서 배경색을 설정
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.1), // 그림자의 색상과 투명도
              spreadRadius: 3, // 그림자의 확산 정도
              blurRadius: 10, // 그림자의 흐림 정도
              offset: Offset(0, 3),
          ),// 그림자의 수평 및 수직 위치),
        ],
      ),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF399148), // 버튼 배경색
            shadowColor: Color(0x75000000),
            elevation: 5,
            minimumSize: Size(180, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // 모서리의 둥근 정도
            ),
          ),
          onPressed: () {
            // 버튼을 눌렀을 때 수행할 동작을 정의합니다.
            print('결제되었습니다.');
          },
          child: Text('결제하기',style:
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'customFonts',
            color: Color(0xffFFFFFF),
          ),), // 버튼 내 텍스트
        ),
      ),
    );
  }
}
