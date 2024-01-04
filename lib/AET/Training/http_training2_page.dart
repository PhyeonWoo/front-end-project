import 'package:aet/AET/widgets/Search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() => runApp(training2_page());

class training2_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("안녕하세요"),
        leading: leading_action_ButtonPage(),),
        body: Center(
          child: Row(
            children: [
              Container(

              )
            ],
          ),
        ),
      ),
    );
  }
}
