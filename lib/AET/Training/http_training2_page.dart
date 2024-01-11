// import 'package:aet/AET/widgets/leading_Button.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(training2_page());
// }
//
// class training2_page extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(250),
//         child: SafeArea(
//           child: AppBar(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(25),
//               ),
//             ),
//             backgroundColor: Colors.transparent,
//             elevation: 0,
//             flexibleSpace: ClipRRect(
//               borderRadius: BorderRadius.vertical(
//                 bottom: Radius.circular(25),
//               ),
//               child: Image(
//                 image: AssetImage('assets/images/123.png'),
//                 fit: BoxFit.cover, // 이미지를 cover로 설정하여 AppBar에 맞게 확장
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//
//
//                 Text("노원 엘지핏",
//                   style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green, fontSize: 30,letterSpacing: 3.0
//                 ),
//                   textAlign: TextAlign.left,
//                 ),
//                 Text("상세정보",style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,letterSpacing: 3.0,
//                 ),
//                   textAlign: TextAlign.right,
//                 ),
//
//
//                 Divider(
//                   color: Colors.black,thickness: 2,
//                 ),
//
//                 Text("\n일일권",style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//                 ),
//
//                 Container(
//                   margin: EdgeInsets.fromLTRB(10, 10,10,0),
//                   width: 400,
//                   height: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.green,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//
//                     children: [
//                       Text("일일권",style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
//
// class training2_page extends StatelessWidget {
//   final int photoId;
//
//   training2_page({required this.photoId});
//
//   @override
//   Widget build(BuildContext context) {
//     // 여기서 photoId에 따라 필요한 정보를 가져오거나 처리할 수 있습니다.
//     // 예를 들어, 서버에서 해당 photoId에 대한 상세 정보를 다시 가져올 수 있습니다.
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Photo Detail"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Display Details for Photo ID: $photoId"),
//             // 여기에 필요한 정보를 표시하는 위젯을 추가할 수 있습니다.
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:flutter/material.dart';

class training2_page extends StatelessWidget {
  final int photoId;
  training2_page({Key? key,required this.photoId}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(photoId: photoId,),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final int photoId;

  MyHomePage({Key? key, required this.photoId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: SafeArea(
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
              child: Image(
                image: AssetImage('assets/images/123.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                Text(
                  "\n운동시설 이름 : $photoId",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),

                Divider(
                  color: Colors.black,
                  thickness: 1,
                ),

                Text("\n일일권",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: 400,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("일일권",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
