import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';


class DailyTicketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(
          titleWrite: '일일권',BackButton: true, AppbarColor: AppColor.white,),
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
