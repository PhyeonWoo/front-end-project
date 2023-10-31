import 'package:aet/AET/Button/action_Button.dart';
import 'package:aet/AET/Button/leading_Button.dart';
import 'package:flutter/material.dart';


class fourth extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<fourth> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TEST')
            ],
          ),
        ),
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