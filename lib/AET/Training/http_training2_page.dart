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
//         child: AppBar(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(25),
//             ),
//           ),
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           flexibleSpace: ClipRRect(
//             borderRadius: BorderRadius.vertical(
//               bottom: Radius.circular(25),
//             ),
//             child: Image(
//               image: AssetImage('assets/images/123.png'),
//               fit: BoxFit.cover, // 이미지를 cover로 설정하여 AppBar에 맞게 확장
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:aet/AET/widgets/leading_Button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(training2_page());
}

class training2_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
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
                fit: BoxFit.cover, // 이미지를 cover로 설정하여 AppBar에 맞게 확장
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Flutter AppBar image background tutorial'),
      ),
    );
  }
}
