import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomContainerWidthLong extends StatelessWidget {
  final String text;
  final String textSub;

  const CustomContainerWidthLong({required this.text, required this.textSub});

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
          color: Colors.grey, // 테두리 색상 설정
          width: 0.5, // 테두리 두께 설정
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // 그림자 색상
            spreadRadius: 1, // 그림자 확장 범위
            blurRadius: 10, // 그림자 흐림 정도
            offset: Offset(0, 0), // x, y 축에 대한 그림자 위치
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
                        padding: EdgeInsets.fromLTRB(0, 3, 0, 3), // 여기서 패딩 설정
                        backgroundColor: Colors.transparent, // 배경색을 투명하게 설정
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {
                        // 버튼 클릭 시 실행할 코드
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
