import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // 높이를 조정하세요
      margin: EdgeInsets.fromLTRB(10, 10,0,10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
        border: Border.all(),
      ),
      child: Center(
        child: Text(
          "Test1",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // 높이를 조정하세요
      margin: EdgeInsets.fromLTRB(0, 10, 10,10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
        border: Border.all(),
      ),
      child: Center(
        child: Text(
          "Test2",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
