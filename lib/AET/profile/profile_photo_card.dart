import 'package:aet/AET/profile/profile_point_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              ProfileCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 132,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF399148),
        boxShadow: [
          BoxShadow(
            color: Color(0x25000000),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "짐보따리 잔여 포인트",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "customFonts",
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 5,
                        color: Color(0x25000000)
                      )
                    ]
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
                  "50,000 포인트",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "customFonts",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                      shadows: [
                        Shadow(
                            offset: Offset(2, 2),
                            blurRadius: 5,
                            color: Color(0x25000000)
                        )
                      ]
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "이번 달 만료예정 포인트 ",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "customFonts",
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                          shadows: [
                            Shadow(
                                offset: Offset(2, 2),
                                blurRadius: 5,
                                color: Color(0x25000000)
                            )
                          ]
                      ),
                    ),
                    Text(
                      "50,000P",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "customFonts",
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                          shadows: [
                            Shadow(
                                offset: Offset(2, 2),
                                blurRadius: 5,
                                color: Color(0x25000000)
                            )
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ProfilePointBox(),
          ),
        ],
      ),
    );
  }
}