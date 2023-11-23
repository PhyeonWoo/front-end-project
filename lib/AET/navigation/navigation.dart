import 'package:aet/AET/components/custom_navigation.dart';
import 'package:aet/AET/screens/home.dart';
import 'package:aet/AET/theme/theme_container.dart';
import 'package:flutter/material.dart';
import 'package:aet/AET/screens/third.dart';
import 'package:aet/AET/screens/second.dart';
import 'package:aet/AET/screens/fourth.dart';

void main() => runApp(ButtonMainFul());

class ButtonMainFul extends StatefulWidget {
  @override
  _ButtonMainFulState createState() => _ButtonMainFulState();
}

class _ButtonMainFulState extends State<ButtonMainFul> {
  int currentIndex = 0;
  final screens = [
    homeMain(),
    second(),
    third(),
    fourth(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onIndexChanged: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
