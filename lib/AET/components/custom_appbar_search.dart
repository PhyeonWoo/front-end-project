import 'package:aet/AET/components/custom_search_form_provider.dart';
import 'package:aet/AET/widgets/action_Button.dart';
import 'package:aet/AET/widgets/leading_Button.dart';
import 'package:aet/util/validator_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final _formKey = GlobalKey<FormState>();
  final _providerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        action_Button(),
      ],
      toolbarHeight: 180, // AppBar 높이 설정
      backgroundColor: Color(0xFF399148),
      elevation: 3, // 그림자 깊이
      shadowColor: Color(0x75000000), // 그림자 색상
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20), // 둥근 하단 모서리
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "짐보따리",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFffffff),
                ),
              ),
              _searchForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchForm() {
    return Form(
      key: _formKey, // 새로운 GlobalKey 생성
      child: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          CustomSearchFormProvider(
            controller: _providerSearch,
            hint: "ProviderName",
            funValidator: validatorProvider(),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(160); // AppBar의 높이
}
