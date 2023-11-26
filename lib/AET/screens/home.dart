import 'package:aet/AET/components/custom_appbar_search.dart';

import 'package:aet/AET/theme/theme_container.dart';
import 'package:flutter/material.dart';



void main() => runApp(homeMain());

class homeMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(),
        body: HomeContainer1(),
      ),
    );
  }
}