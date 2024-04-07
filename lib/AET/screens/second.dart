import 'package:flutter/material.dart';


import '../Sports_Category/sports_container.dart'; //flutter의 package를 가져오는 코드 반드시 필요

void main() => runApp(second());

class second extends StatefulWidget {
  @override
  MyAppState1 createState() => MyAppState1();
}

class MyAppState1 extends State<second> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/userprofile.png',fit: BoxFit.cover,),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 1,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   title: Text("UnBoxing"),
      //   centerTitle: true,
      //   titleTextStyle: TextStyle(color: Colors.black,fontSize: 20),
      //
      //   leading: IconButton(
      //     icon: Icon(Icons.search),
      //     onPressed: (){},
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(Icons.grade),
      //       onPressed: (){},
      //     ),
      //   ],
      // )

    );
  }
}