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
              CustomList(textWrite: "시설등록"),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomList extends StatelessWidget {
  final String textWrite;

  const CustomList({required this.textWrite});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: Text(
              textWrite,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'customFonts',
                fontWeight: FontWeight.w400,
                color: Color(0XFF4F4F4F),
              )
          ),
        ),
        Container(
          height: 0.5,
          width: double.infinity,
          color: Color(0xFFD9D9D9),
        ),
      ],
    );
  }
}
