import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/components/custom_list.dart';
import 'package:aet/AET/profile/profile_manager_bar.dart';
import 'package:aet/AET/profile/profile_photo_card.dart';
import 'package:aet/AET/profile/profile_photo_name.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppbarProfile(
          titleWrite: '프로필',),
        body: Container(
          color: Color(0xFFf0f0f0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10,20,10,0),
                child: ProfileName(),
              ),
              ProfileCard(),
              Padding(
                padding: EdgeInsets.fromLTRB(10,20,10,10),
                child: ProfileManagerBar(),
              ),
              CustomList(textWrite: "시설등록"),
              CustomList(textWrite: "친구초대"),
              CustomList(textWrite: "1:1문의"),
              CustomList(textWrite: "자주하는질문"),
              CustomList(textWrite: "공지/이벤트"),
              CustomList(textWrite: "설정"),
            ],
          ),
        ),
      ),
    );
  }
}
