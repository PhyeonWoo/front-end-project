import 'package:flutter/material.dart';


class ProfilePhoto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 85,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),//색상
            spreadRadius: 3, //범위
            blurRadius: 10,//흐림
            offset: Offset(0,0),
          )
        ]
      ),
    );
  }
}
