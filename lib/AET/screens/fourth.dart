import 'package:aet/AET/widgets/action_Button.dart';
import 'package:aet/AET/widgets/leading_Button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(fourth());
}

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

            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("Gym보따리\n\t\t\t\t 프로필"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),
        )
    );
  }
}