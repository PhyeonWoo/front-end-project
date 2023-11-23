import 'package:aet/AET/screens/second.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(HomeContainer1());

class HomeContainer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage2(),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Square1(),
                  SizedBox(width: 10),  // Added spacing
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Square3(),
                      Square2(),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),  // Added spacing
              Square4(),  // New widget
            ],
          ),
        ),
      ),
    );
  }
}

class Square1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicMargin = screenWidth * 0.03;
    return Container(
      width: 170-dynamicMargin,
      height: 290-dynamicMargin,
      margin: EdgeInsets.fromLTRB(dynamicMargin, 10, 0, 0),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,0),
              child: Text("운동시설",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(79,79,79,1))
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text("원하는 운동시설 찾기",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                    color: Color.fromRGBO(79, 79, 79, 1)
                )
              ),
            ),
          ],
        ),
    );
  }
}

class Square2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicMargin = screenWidth * 0.03;
    return GestureDetector(
      onTap: (){
        Get.to(second());
      },
      child: Container(
        width: 210-dynamicMargin,
        height: 140-dynamicMargin,
        margin: EdgeInsets.fromLTRB(0, dynamicMargin, dynamicMargin, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey, // 테두리 색상 설정
            width: 0.5,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text("종목 추천",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(79, 79, 79, 1))
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
    //put 없으면 만듬, 없으면 찾음
    UserController u = Get.put(UserController());

    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicMargin = screenWidth * 0.03;
    return GestureDetector(
      child: Container(
        width: 210-dynamicMargin,
        height: 140-dynamicMargin,
        margin: EdgeInsets.fromLTRB(0,5,10,0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [Color(0xFFFFD194), Color(0xFFFFC247)], // Adjust the gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text("GYM보따리",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff),
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 10 , 0, 0),
                child: Obx(()=> Text("${u.isLogin}",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                   ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(1, 15, 0, 0),
            child: Text("POINT",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
               ),
            ),
          ],
        ),
      ),
    );
  }
}

class Square4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double dynamicMargin = screenWidth * 0.03;
    return Container(
      width: 406-dynamicMargin,
      height: 140-dynamicMargin,
      margin: EdgeInsets.fromLTRB(0, 0, dynamicMargin, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey, // 테두리 색상 설정
          width: 0.5,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text("일일권",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(79, 79, 79, 1))
            ),
          ),
        ],
      ),
    );
  }
}