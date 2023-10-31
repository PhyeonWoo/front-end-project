import 'package:flutter/material.dart';

import '../Button/action_Button.dart';
import '../Button/leading_Button.dart';
import '../Sports_Category/Coach_Container.dart';



class third extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<third> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: coach_Container(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("UnBoxing"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),

          leading: leading_Button(),

          // 우측 버튼
          actions: <Widget>[
            action_Button(),
          ],
        )
    );
  }
}