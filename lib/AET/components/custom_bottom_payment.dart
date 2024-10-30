import 'package:flutter/material.dart';

class CustomOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      width: screenWidth,
      decoration: BoxDecoration(
          color: Color(0xFFFBFBFB),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.1),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF399148),
            shadowColor: Color(0x75000000),
            elevation: 5,
            minimumSize: Size(180, 45),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: () {
            print('결제되었습니다.');
          },
          child: Text('결제하기',style:
          TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'customFonts',
            color: Color(0xffFFFFFF),
          ),),
        ),
      ),
    );
  }
}
