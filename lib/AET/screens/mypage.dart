import 'package:aet/AET/auth/login_page.dart';
import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/components/custom_list.dart';
import 'package:aet/AET/profile/profileCategory/updatedUserProfile.dart';
import 'package:aet/AET/profile/profile_manager_bar.dart';
import 'package:aet/AET/profile/profile_photo_card.dart';
import 'package:aet/AET/profile/profile_photo_name.dart';
import 'package:aet/AET/screens/mypageCategory/QnA.dart';
import 'package:aet/AET/screens/mypageCategory/noticeEvent.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppbar(
          titleWrite: '마이페이지',),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10,20,10,20),
                child: ProfileName(),
              ),
              ProfileCard(),
              Padding(
                padding: EdgeInsets.fromLTRB(10,20,10,20),
                child: ProfileManagerBar(),
              ),
              Divider(
                color: AppColor.lightGrey.withOpacity(0.2), // 구분선 색상
                height: 1, // 구분선 높이
                thickness: 7, // 구분선 두께
              ),
              CustomList(
                textWrite: "회원정보수정",
                onClick: () => Get.to(() => UpdatedUserProfile()),
              ),
              CustomList(
                textWrite: "자주하는질문",
                onClick: () => Get.to(() => QnA()),
              ),
              CustomList(
                textWrite: "공지/이벤트",
                onClick: () => Get.to(() => NoticeEvent()),
              ),
              CustomList(
                textWrite: "로그아웃",
                onClick: () {
                Get.to(() => LoginPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
