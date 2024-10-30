import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class QnA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(
          titleWrite: '자주하는질문',BackButton: true, AppbarColor: AppColor.white,),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            ],
          ),
        ),
      ),
    );
  }
}