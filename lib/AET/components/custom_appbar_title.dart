import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String titleWrite;
  final bool BackButton;
  final Color AppbarColor;

  const CustomAppbar({
    required this.titleWrite,
    this.BackButton = false,
    this.AppbarColor = Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppbarColor,
      centerTitle: true,
      leading: BackButton ? IconButton(
        icon: Icon(Icons.arrow_back, color: AppColor.darkGrey),
        onPressed: () => Get.back(),
      ) : null,
      title: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Text(
          titleWrite,
          style: TextStyle(
            color: AppColor.darkGrey,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
