import 'package:flutter/material.dart';
import 'IntroPage.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          IntroPage(),
          Container(color: Colors.accents[2],),
          Container(color: Colors.accents[5],),
        ],
      ),
    );
  }
}
