import 'package:flutter/material.dart';
import '../Button/button.dart';
import "Sports_Container.dart";



void main() => runApp(sports_home());

class sports_home extends StatelessWidget {
  const sports_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: app123123(),
        body: Sports_Container(),
        appBar: AppBar(

          // 상단바
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("UnBoxing"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),

          // 좌측 위젯버튼
          leading: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),

          // 우측 위젯버튼
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.grade),
              onPressed: (){},
            ),
          ],

        ),
      ),
    );
  }
}