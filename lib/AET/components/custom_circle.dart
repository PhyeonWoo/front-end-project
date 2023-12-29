import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String textWrite;

  const ProfilePhoto({required this.textWrite});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x25000000),//색상
                  spreadRadius: 3, //범위
                  blurRadius: 3,//흐림
                  offset: Offset(1,1),
                )
              ]
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(
            textWrite,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'customFonts',
              fontWeight: FontWeight.w400,
              color: Color(0XFF4F4F4F),
            )
          ),
        ),
      ],
    );
  }
}
