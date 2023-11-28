import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCircularContainer(String text) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 10.0,
          ),
        ),
      ),
    ),
  );
}

