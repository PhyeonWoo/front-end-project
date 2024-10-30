import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/profile/profile_photo_button.dart';
import 'package:aet/AET/screens/navigation/homeNavigation.dart';
import 'package:aet/controller/bottom_nav_controller.dart';
import 'package:aet/controller/photo_upload_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatedUserProfile extends StatelessWidget {
  final UserController u = Get.put(UserController());
  final PhotoUploadController up = Get.put(PhotoUploadController());
  final BottomNavController B = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(
          titleWrite: '회원정보수정',
          BackButton: true,
          AppbarColor: AppColor.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              ProfilePhotoButton(),
              TextButton(
                onPressed: () async {
                  await up.pickAndUploadImage("${u.principal.value.memberId}");
                  await u.fetchUserPoints(u.Token.value.memberId!);
                  B.tabIndex.value = 2;
                  Get.to(Navigation());
                },
                child: Text("사진 또는 아바타 수정",
                    style: TextStyle(
                        color: AppColor.darkGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Pretendard")),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 20, 70, 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "이름",
                          style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Pretendard"),
                        ),
                        Text(
                          "${u.principal.value.nickName} 님",
                          style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Pretendard"),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "이메일",
                          style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Pretendard"),
                        ),
                        Text(
                          "${u.principal.value.memberId}",
                          style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Pretendard"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "비밀번호",
                          style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Pretendard"),
                        ),
                        Text(
                          u.principal.value.password != null
                              ? "*" * u.principal.value.password!.length
                              : "null",
                          style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Pretendard"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
