//
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
//         bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//               label: 'Favorites',
//               icon: Icon(Icons.favorite),
//             ),
//             BottomNavigationBarItem(
//               label: "Music",
//               icon: Icon(Icons.music_note),
//             ),
//             BottomNavigationBarItem(
//               label: 'Places',
//               icon: Icon(Icons.location_on),
//             ),
//             BottomNavigationBarItem(
//               label: 'News',
//               icon: Icon(Icons.library_books),
//             ),
//           ],
//           type: BottomNavigationBarType.fixed,
//           currentIndex: _currentIndex,
//           backgroundColor: Color(0xFF6200EE),
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.white.withOpacity(.6),
//           selectedFontSize: 14,
//           unselectedFontSize: 14,
//           onTap: (value) {
//             setState(() => _currentIndex = value);
//           },
//         ),
//         body: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   Square1(),
//                 ],
//               ),
//
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: <Widget>[
//                   Square2(),
//                   Square3(),
//                 ],
//               ),
//
//               Row(
//                 children: <Widget>[
//                   Square4(),
//                 ],
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Square1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 411,
//       height: 500,
//       margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
//
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
// class Square2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       margin: EdgeInsets.fromLTRB(0,10,0,0),
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
// class Square3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       margin: EdgeInsets.fromLTRB(10,10,0, 0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey,
//         border: Border.all(),
//       ),
//       child: Text("Test3",style: TextStyle(fontSize: 20),),
//     );
//   }
// }
//
// class Square4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 411,
//       height: 150,
//       margin: EdgeInsets.fromLTRB(0,10,0, 0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey,
//         border: Border.all(),
//       ),
//       child: Text("Test4",style: TextStyle(fontSize: 20),),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(Sports_Container());

class Sports_Container extends StatelessWidget {
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
        appBar: AppBar(
          title: Text('종목_카테고리'),
          centerTitle: true,
          backgroundColor: Colors.grey,
          elevation: 1.0,
        ),


        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
              Container(
                width: 411, height: 150,
                margin: EdgeInsets.fromLTRB(0,10,0,0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Divider(color: Colors.black, thickness: 2,),
                // child: Text("Test1",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}