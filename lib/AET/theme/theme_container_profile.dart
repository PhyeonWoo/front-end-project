import 'package:aet/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          UserMainBox(),
        ],
      ),
    );
  }
}



class UserMainBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
        child: Container(
        width: screenWidth,
        height: 140,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF399148),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Square3(),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                child: Text(
                  "이번 달 만료 예정 포인트 50,000P",
                  style: TextStyle(
                    fontFamily: 'customFont',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class Square3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserController u = Get.put(UserController());
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      child: Container(
        width: screenWidth,
        height: 100,
        margin: EdgeInsets.fromLTRB(7, 3, 7, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "50,000 POINT",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'customFont',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1D6128),
                    ),
                  ),
                  Text(
                    "짐보따리 잔여 포인트",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'customFont',
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF1D6128),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                    child: Container(
                      width: 50,
                      height: 55,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF399148)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                    child: Obx(
                          () => Text(
                        "${u.principal.value.email} 님",
                        style: TextStyle(
                          fontFamily: 'customFont',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF399148),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
