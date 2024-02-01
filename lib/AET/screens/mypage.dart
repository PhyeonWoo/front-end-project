import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/components/custom_list.dart';
import 'package:aet/AET/login/login_page.dart';
import 'package:aet/AET/profile/profileCategory/updatedUserProfile.dart';
import 'package:aet/AET/profile/profile_manager_bar.dart';
import 'package:aet/AET/profile/profile_photo_card.dart';
import 'package:aet/AET/profile/profile_photo_name.dart';
import 'package:aet/AET/screens/mypageCategory/QnA.dart';
import 'package:aet/AET/screens/mypageCategory/noticeEvent.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: CustomAppbar(
          titleWrite: '마이페이지',),
        body: Container(
          color: Colors.white,
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
              CustomList(textWrite: "회원정보수정",togo: UpdatedUserProfile(),),
              CustomList(textWrite: "자주하는질문",togo: QnA(),),
              CustomList(textWrite: "공지/이벤트",togo: NoticeEvent(),),
              CustomList(textWrite: "로그아웃",togo: LoginPage(),), // 임시용 토큰을 안뺐음.
            ],
          ),
        ),
      ),
    );
  }
}
