import 'package:aet/AET/components/custom_search_form_provider.dart';
import 'package:aet/AET/widgets/action_Button.dart';
import 'package:aet/AET/widgets/leading_Button.dart';
import 'package:aet/controller/provider_controller.dart';
import 'package:aet/util/validator_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final _formKey = GlobalKey<FormState>();
  final ProviderController p = Get.put(ProviderController());
  final _providerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading_Button(),
      actions: <Widget>[
        action_Button(),
      ],
      toolbarHeight: 160, // AppBar 높이 설정
      backgroundColor: Colors.orangeAccent,
      elevation: 10, // 그림자 깊이
      shadowColor: Colors.black26, // 그림자 색상
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20), // 둥근 하단 모서리
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "짐보따리",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
