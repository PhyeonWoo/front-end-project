import 'package:flutter/material.dart';
import 'IntroPage.dart';
import 'package:aet/AET/login/login_page.dart';
//


class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          LoginPage(),
          // IntroPage(),
          // Container(color: Colors.accents[2],),
          // Container(color: Colors.accents[5],),
        ],
      ),
    );
  }
}
