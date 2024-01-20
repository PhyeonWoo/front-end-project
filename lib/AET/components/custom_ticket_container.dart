import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Center(
          child: CustomTicket(),
        ),
      ),
    );
  }
}

class CustomTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 164,
      decoration: BoxDecoration(
        color: Color(0xFF399618),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0,7,0,3),
            child: Text(
              "테니스",
              style: TextStyle(
                color: Color(0xFFffffff),
                fontFamily: "customFonts",
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 130.75,
            color: Color(0xFFffffff),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0,5,0,3),
                  child: Text(
                    "오전 8시 예정",
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontFamily: "customFonts",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,3,0,0),
                  child: Text(
                    "1번 코트",
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontFamily: "customFonts",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,3),
                  child: Text(
                    "24/01/03",
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontFamily: "customFonts",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,5,0,0),
                  child: Text(
                    "노원 테니스장",
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontFamily: "customFonts",
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0,0,0,3),
                  child: Text(
                    "노원구 상계동 엘지빌라",
                    style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontFamily: "customFonts",
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  color: Color(0xFFE0FFE5),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
