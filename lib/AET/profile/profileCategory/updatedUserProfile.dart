import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/profile/profile_photo.dart';
import 'package:aet/controller/photo_upload_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(UpdatedUserProfile());
}


class UpdatedUserProfile extends StatelessWidget {
  final UserController u = Get.put(UserController());
  final PhotoUploadController up = Get.put(PhotoUploadController());

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
              ElevatedButton(onPressed: () async{
                await up.pickAndUploadImage("${u.principal.value.memberId}");
              }, child: Text("이미지")),
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
