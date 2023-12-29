import 'package:aet/AET/components/custom_circle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              ProfileManagerBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileManagerBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfilePhoto(textWrite: "일일권"),
          ProfilePhoto(textWrite: "결제내역"),
          ProfilePhoto(textWrite: "후기관리"),
        ],
      ),
    );
  }
}
