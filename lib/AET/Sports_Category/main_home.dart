import 'package:aet/AET/theme/theme_container.dart';
import 'package:aet/AET/widgets/button.dart';
import 'package:aet/AET/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import "Sports_Container.dart";



void main() => runApp(sports_home());

class sports_home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Button_Main(),
        body: HomeContainer1(),
        appBar: AppBar(
        ),
      ),
    );
  }
}