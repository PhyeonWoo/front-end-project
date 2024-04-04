import 'package:aet/AET/profile/profile_set.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfilePhoto extends StatelessWidget {
  UserController u = Get.put(UserController());
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 85,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.Shadow.withOpacity(0.1),//색상
            spreadRadius: 1, //범위
            blurRadius: 5,//흐림
            offset: Offset(0,0),
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // ClipRRect로 이미지 모서리를 둥글게
        child: ProfileSet(),
      ),
    );
  }
}
