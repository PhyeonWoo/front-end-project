import 'package:aet/AET/profile/profile_set.dart';
import 'package:aet/AET/screens/navigation/homeNavigation.dart';
import 'package:aet/controller/bottom_nav_controller.dart';
import 'package:aet/controller/photo_upload_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePhotoButton extends StatelessWidget {
  final UserController u = Get.put(UserController());
  final PhotoUploadController up = Get.put(PhotoUploadController());
  final BottomNavController B = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async{
          await up.pickAndUploadImage(
              "${u.principal.value.memberId}");
          await u.fetchUserPoints(u.Token.value.memberId!);
          B.tabIndex.value = 2;
          Get.to(Navigation());

      },
      child: Container(
        width: 80,
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColor.Shadow.withOpacity(0.1), // 색상
              spreadRadius: 1, // 범위
              blurRadius: 5, // 흐림
              offset: Offset(0, 0),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // ClipRRect로 이미지 모서리를 둥글게
          child: ProfileSet(),
        ),
      ),
    );
  }
}