import 'package:aet/controller/bottom_nav_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainerWidthLong extends StatelessWidget {
  final String text;
  final String textSub;
  final BottomNavController B = Get.put(BottomNavController());

  CustomContainerWidthLong({required this.text, required this.textSub});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;

    return Container(
      width: screenSize - 20,
      height: 150,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 0.2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.darkGrey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  textSub,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                    color: AppColor.lightGrey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  width: 96,
                  height: 32,
                   decoration: BoxDecoration(
                     color: AppColor.green,
                     borderRadius: BorderRadius.circular(5)
                   ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                        backgroundColor: Colors.transparent,
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        B.tabIndex.value = 1;
                      },
                      child: Text("확인하기",style: TextStyle(color: Colors.white),),
                    )
                ),
              )
            ],
          ),
          ClipRRect(
            child: FittedBox(
              child: Transform.scale(
                scale: 1.3,
                child: Image.asset('assets/images/training.jpg', width: screenSize*0.6, height: screenSize*0.4, fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
