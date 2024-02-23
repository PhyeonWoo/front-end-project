// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
// void main() => runApp(Sports_Container());
//
// class Sports_Container extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(),
//       home: MyHomePage2(),
//     );
//   }
// }
//
// class MyHomePage2 extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage2> {
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('종목_카테고리'),
//           centerTitle: true,
//           backgroundColor: Colors.grey,
//           elevation: 1.0,
//         ),
//
//
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//               Container(
//                 width: 411, height: 150,
//                 margin: EdgeInsets.fromLTRB(0,10,0,0),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Divider(color: Colors.black, thickness: 2,),
//                 // child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:aet/AET/Sports_Category/sports_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Training/http_training2.dart';
import 'sports_buildcontainer.dart';

void main() => runApp(Sports_Container());

class Sports_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      //home: JsonParse(),
    );
  }
}

//
// class MyHomePage2 extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage2> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: sports_appbar(),
//         body: LayoutBuilder(
//           builder: (BuildContext context, BoxConstraints constraints) {
//             return SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Sports_buildContainer("Test1", constraints),
//                   Divider(color: Colors.greenAccent, thickness: 2,),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
//
