import 'package:flutter/material.dart';

class ProfilePointBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "충전하기",
            style: TextStyle(
            fontFamily: "customFonts",
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0XFF1D6128),
              ),
            ),
        ],
      ),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x25000000),//색상
              spreadRadius: 3, //범위
              blurRadius: 3,//흐림
              offset: Offset(1,1),
            )
          ]
      ),
    );
  }
}
