// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: PreferredSize(
//           preferredSize: Size.fromHeight(80.0), // 원하는 높이로 설정
//           child: AppBar(
//             title: Text('Circular Container in AppBar'),
//             flexibleSpace: Column(
//
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 SizedBox(height: 20.0),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: 30.0,
//                     height: 30.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey,
//                     ),
//                     child: Center(
//                       child: Text(
//                         'A',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 10.0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     SizedBox(height: 20.0),
//                     Padding(
//                       padding: EdgeInsets.all(8.0),
//                       child: Container(
//                         width: 30,
//                         height: 30,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.grey,
//                         ),
//                         child: Center(
//                           child: Text(
//                             'B',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 10.0
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 )
//                 // Padding(
//                 //   padding: const EdgeInsets.all(8.0),
//                 //   child: Container(
//                 //     width: 20,
//                 //     height: 20,
//                 //     decoration: BoxDecoration(
//                 //       shape: BoxShape.circle,
//                 //       color: Colors.grey,
//                 //     ),
//                 //     child: Center(
//                 //       child: Text(
//                 //         "A",
//                 //         style: TextStyle(
//                 //           color: Colors.white,
//                 //           fontWeight: FontWeight.bold,
//                 //           fontSize: 10,
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ),
//                 // )
//               ],
//             ),
//           ),
//         ),
//         body: Center(
//           child: Text('Body content goes here'),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../components/custom_appbar_sports.dart';

class sports_appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Flutter'),
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
      fontSize: 20),
      backgroundColor: Colors.white,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCircularContainer('A'),
                buildCircularContainer('B'),
                buildCircularContainer('C'),
                buildCircularContainer('D'),
                buildCircularContainer('E'),
                buildCircularContainer('F'),
                buildCircularContainer('G'),
                buildCircularContainer('H'),
                buildCircularContainer('I'),
                buildCircularContainer('J'),
                buildCircularContainer('K'),
                buildCircularContainer('L'),
                buildCircularContainer('M'),
                buildCircularContainer('N'),
                buildCircularContainer('O'),
                buildCircularContainer('P'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.0);
}
