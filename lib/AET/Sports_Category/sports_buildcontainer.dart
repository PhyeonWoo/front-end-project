import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Sports_buildContainer(String text, BoxConstraints constraints) {
  double containerHeight = constraints.maxWidth * 0.36;

  return Container(
    width: constraints.maxWidth,
    height: containerHeight,
    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
    decoration: BoxDecoration(
      color: Colors.grey,
      border: Border.all(),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    ),
  );
}