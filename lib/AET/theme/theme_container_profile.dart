import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        color: AppColor.green,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  InnerUserMainBox(),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 5),
                    child: Text(
                      "이번 달 만료 예정 포인트",
                      style: TextStyle(
                        fontFamily: "Pretendard",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                    child: Text(
                      "50,000P",
                      style: TextStyle(
                        fontFamily: "Pretendard",
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
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

class InnerUserMainBox extends StatelessWidget {
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
                    "50,000 포인트",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkGreen,
                      letterSpacing: -2,
                    ),
                  ),
                  Text(
                    "짐보따리 잔여 포인트",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.w300,
                      color: AppColor.darkGreen,
                      letterSpacing: -1,
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
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: AppColor.green),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
                    child: Obx(
                          () => Text(
                        "${u.principal.value.email} 님",
                        style: TextStyle(
                          fontFamily: "Pretendard",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColor.green,
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
