import 'package:aet/AET/Button/button.dart';
import 'package:aet/Training/main.dart';
import 'package:flutter/material.dart';



void main() => runApp(main_home());

class main_home extends StatelessWidget {
  const main_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: app123123(),
        // bottomNavigationBar: MyHomePage(),
        // body: MyApp(),
        appBar: AppBar(
          // 상단바
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Gym1"),
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
              onPressed: (){
              },
            ),
          ],

        ),
      ),
    );
  }
}