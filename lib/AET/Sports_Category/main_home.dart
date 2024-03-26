import 'package:aet/AET/components/custom_appbar_search.dart';
import 'package:aet/AET/theme/theme_container.dart';
import 'package:aet/AET/widgets/button.dart';
import 'package:aet/AET/widgets/leading_Button.dart';
import 'package:flutter/material.dart';



void main() => runApp(sports_home());

class sports_home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: HomeContainer1(),
        appBar: CustomAppBar(),
      ),
    );
  }
}