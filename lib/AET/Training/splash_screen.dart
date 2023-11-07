import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/gym.png',
            width: 400,
            height: 250,
            fit: BoxFit.cover,
            ),

            CircularProgressIndicator(color: Colors.greenAccent)
          ],
        ),
      ),
    );
  }
}
