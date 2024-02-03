import 'package:flutter/material.dart';
import '../Sports_Category/main_home.dart';
import 'IntroPage.dart';
import 'address_page.dart';


class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          // loginPage(),
          sports_home(),
          address_page(),
        ],
      ),
    );
  }
}
