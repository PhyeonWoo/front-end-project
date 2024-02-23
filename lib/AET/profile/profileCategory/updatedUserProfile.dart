import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/profile/profile_photo.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(UpdatedUserProfile());
}


class UpdatedUserProfile extends StatelessWidget {
  UserController u = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(
          titleWrite: '회원정보수정',BackButton: true,),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfilePhoto(),
              Text(
                "${u.principal.value.nickName} 님",
                style: TextStyle(
                  color: AppColor.darkGrey,
                  fontSize: 18,
                  fontFamily: "Pretendard"
                ),
              )
            ],
          ),
        ),
    );
  }
}
