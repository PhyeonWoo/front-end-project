//
// import 'package:aet/main.dart';
// import 'package:flutter/material.dart';
// import '../Button/action_Button.dart';
// import '../Button/leading_Button.dart';
// import '../Container/Container.dart';
//
// void main() => runApp(first());
//
// class first extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<first> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar1(),
//       body: HomeContainer1(),   //second third 다름
//     );
//   }
// }
//
//
// class MyAppBar1 extends StatelessWidget implements PreferredSizeWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text('Gym'),
//       backgroundColor: Colors.orangeAccent,
//       elevation: 1,
//       iconTheme: IconThemeData(color: Colors.black),
//       centerTitle: true,
//       titleTextStyle: TextStyle(color: Colors.black,
//           fontSize: 20.0,
//           fontWeight: FontWeight.bold),
//
//       leading: leading_Button(),
//
//       actions: <Widget>[
//         action_Button(),
//       ],
//     );
//   }
//   @override
//   Size get preferredSize => Size.fromHeight(120.0);
// }




//
// import 'package:aet/AET/Button/action_Button.dart';
// import 'package:aet/AET/Button/leading_Button.dart';
// import 'package:aet/AET/Container/Container.dart';
// import 'package:flutter/material.dart';
// import 'package:aet/AET/Button/button.dart';
//
// void main() {
//   runApp(first());
// }
//
// class first extends StatelessWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         textTheme: const TextTheme(),
//       ),
//       home: const MyHomePage11(title: 'Flutter Demo'),
//     );
//   }
//
// }
//
// class MyHomePage11 extends StatefulWidget {
//   const MyHomePage11({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   State<MyHomePage11> createState() => _MyHomePageState();
//
// }
//
// class _MyHomePageState extends State<MyHomePage11> {
//   final TextEditingController _searchController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.orangeAccent,
//         elevation: 2,
//         iconTheme: IconThemeData(color: Colors.black),
//         titleTextStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
//         title: Align(
//           alignment: Alignment.center,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("GYM"),
//               SizedBox(height: 8),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.7,
//                 child: TextField(
//                   controller: _searchController,
//                   decoration: InputDecoration(
//                     hintText: 'Search...',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.search),
//                       onPressed: () => _searchController.clear(),
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         toolbarHeight: 100.0, // Set the desired height for the AppBar
//         leading:  leading_Button(),
//         actions: <Widget>[
//           action_Button(),
//         ],
//       ),
//       body: HomeContainer1(), // bottomNavigationBar: ,
//     );
//   }
// }
//










//
// import 'package:aet/main.dart';
// import 'package:flutter/material.dart';
// import '../Button/action_Button.dart';
// import '../Button/leading_Button.dart';
// import '../Container/Container.dart';
//
//
//
// class first extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<first> {
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: MyAppBar1(),
//       body: HomeContainer1(),   //second third 다름
//     );
//   }
// }
//
//
// class MyAppBar1 extends StatelessWidget implements PreferredSizeWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text('Gym'),
//       backgroundColor: Colors.orangeAccent,
//       elevation: 1,
//       iconTheme: IconThemeData(color: Colors.black),
//       centerTitle: true,
//       titleTextStyle: TextStyle(color: Colors.black,
//           fontSize: 20.0,
//           fontWeight: FontWeight.bold),
//
//       leading: leading_Button(),
//
//       actions: <Widget>[
//         action_Button(),
//       ],
//     );
//   }
//   @override
//   Size get preferredSize => Size.fromHeight(120.0);
// }
//
//
//


import 'package:aet/AET/Button/action_Button.dart';
import 'package:aet/AET/Button/leading_Button.dart';
import 'package:aet/AET/Container/Container.dart';
import 'package:flutter/material.dart';
import 'package:aet/AET/Button/button.dart';

void main() {
  runApp(first());
}

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(),
      ),
      home: const MyHomePage11(title: 'Flutter Demo'),
    );
  }

}

class MyHomePage11 extends StatefulWidget {
  const MyHomePage11({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage11> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage11> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
        title: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("GYM"),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => _searchController.clear(),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 100.0, // Set the desired height for the AppBar

        leading:  leading_Button(),

        actions: <Widget>[
          action_Button(),
        ],

      ),

      body: HomeContainer1(),
    );
  }
}

