import 'package:aet/AET/components/custom_sport_category_list.dart';
import 'package:aet/AET/components/custom_appbar_widget.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomAppBarSports extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        AppbarWidget(),
      ],
      toolbarHeight: 160, // AppBar 높이 설정
      backgroundColor: AppColor.green,
      elevation: 3, // 그림자 깊이
      shadowColor: AppColor.Shadow, // 그림자 색상
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20), // 둥근 하단 모서리
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.fromLTRB(15,0,15,0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "짐보따리",
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: "Pretendard",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                CustomSportCategoryList(),
                //
              ],
            ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(180);
}
