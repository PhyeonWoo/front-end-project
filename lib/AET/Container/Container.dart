import 'package:aet/AET/Bottom/second.dart';
import 'package:flutter/material.dart';

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
    return Container(
      width: 200,
      height: 300,
      margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.orange,
        border: Border.all(),
      ),
      child: Center(child: Text("Test1", style: TextStyle(fontSize: 20))),
    );
  }
}

class Square2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 145,
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white30,
        border: Border.all(),
      ),
      child: Center(child: Text("Test2", style: TextStyle(fontSize: 20))),
    );
  }
}

// class Square3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 180,
//       height: 145,
//       margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.yellow,
//         border: Border.all(),
//       ),
//       child: Center(child: Text("Test3", style: TextStyle(fontSize: 20))),
//     );
//   }
// }
class Square3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => second()),
        );

      },
      child: new Container(
        width: 180,
        height: 145,
        margin: EdgeInsets.fromLTRB(0,10,10,0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.yellow,
          border: Border.all(),
        ),
        child: Center(child: Text("Test3",style: TextStyle(fontSize: 20))),
      ),
    );
  }
}

class Square4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411,
      height: 150,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
        border: Border.all(),
      ),
      child: Center(child: Text("Test4", style: TextStyle(fontSize: 20))),
    );
  }
}
