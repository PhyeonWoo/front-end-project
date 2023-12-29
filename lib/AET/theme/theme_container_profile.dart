import 'package:aet/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class UserMainBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicMargin = screenWidth * 0.03;
    return GestureDetector(
        child: Container(
        width: 220 - dynamicMargin,
        height: 100 - dynamicMargin,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFF399148),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Square3(),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 3, 0, 0),
                child: Text(
                  "이번 달 만료 예정 포인트 50,000P",
                  style: TextStyle(
                    fontFamily: 'Pretendard',
                    fontSize: 8,
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
    double dynamicMargin = screenWidth * 0.03;
    return GestureDetector(
      child: Container(
        width: 214 - dynamicMargin,
        height: 80 - dynamicMargin,
        margin: EdgeInsets.fromLTRB(3, 3, 3, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child:
                      Text(
                        "50,000 POINT",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1D6128),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Obx(
                            () => Text(
                          "${u.isLogin}",
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text(
                "짐보따리 잔여 포인트",
                style: TextStyle(
                  fontSize: 8,
                  fontFamily: 'Pretendard',
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
            ),
          ],
        ),
      ),
    );
  }
}
