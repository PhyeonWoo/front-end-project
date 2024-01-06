import 'package:aet/AET/profile/profile_photo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Container(
        width: screenWidth,
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: ProfilePhoto(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "김우원님",
                    style: TextStyle(
                      fontFamily: "customFonts",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(79, 79, 79, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "KBUCS2023@gmail.com",
                    style: TextStyle(
                      fontFamily: "customFonts",
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 10, 0, 0),
                          child: Text(
                            "후기",
                            style: TextStyle(
                              fontFamily: "customFonts",
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                              color: Color(0xFF4F4F4F),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Text(
                            "이용",
                            style: TextStyle(
                              fontFamily: "customFonts",
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                              color: Color(0xFF4F4F4F),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "상담내용확인하기",
                    style: TextStyle(
                      fontFamily: "customFonts",
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: Color(0xFF4F4F4F),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
