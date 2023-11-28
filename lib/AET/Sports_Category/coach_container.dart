//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(coach_Container());
//
// class coach_Container extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(),
//       home: Coach_Cotainer2(),
//     );
//   }
// }
//
// class Coach_Cotainer2 extends StatefulWidget {
//   @override
//   _CoachState createState() => _CoachState();
// }
//
// class _CoachState extends State<Coach_Cotainer2> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("종목_카테고리"),
//           centerTitle: true,
//           backgroundColor: Colors.grey,),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: <Widget>[
//
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//               Row(
//                 children: <Widget>[
//                   container1(),
//                   container2(),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class container1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 190,
//       height: 350,
//       margin: EdgeInsets.fromLTRB(10,10,0,0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey,
//         border: Border.all(),
//       ),
//       child: Text("Test1",style: TextStyle(fontSize: 20),),
//     );
//   }
// }
//
// class container2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 190,
//       height: 350,
//       margin: EdgeInsets.fromLTRB(10,10,0,0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey,
//         border: Border.all(),
//       ),
//       child: Text("Test2",style: TextStyle(fontSize: 20),),
//     );
//   }
// }
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coach_buildcontainer.dart';

void main() => runApp(coach_Container());

class coach_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: CoachContainer2(),
    );
  }
}

class CoachContainer2 extends StatefulWidget {
  @override
  _CoachState createState() => _CoachState();
}

class _CoachState extends State<CoachContainer2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("종목_카테고리"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 10, // 원하는 행의 개수로 조정
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: <Widget>[
                    Expanded(
                      child: Container1(),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container2(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
