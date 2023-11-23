import 'package:aet/AET/components/custom_appbar_search.dart';
import 'package:aet/AET/navigation/navigation.dart';
import 'package:aet/AET/theme/theme_container.dart';
import 'package:flutter/material.dart';



void main() => runApp(homeMain());

class homeMain extends StatefulWidget {
  @override
  MyAppState1 createState() => MyAppState1();
}

class MyAppState1 extends State<homeMain> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeContainer1(),
      appBar: CustomAppBar(),
    );
  }
}