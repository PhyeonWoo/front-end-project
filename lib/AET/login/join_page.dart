import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_outline_field.dart';
import 'package:aet/AET/login/login_page.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/util/validator_util.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final UserController userController = Get.find<UserController>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController(); // 비밀번호 확인 컨트롤러 추가
  final _nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                child: Text(
                  "회원가입",
                  style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFF1D6128),
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              _joinForm(),
            ],
          ),
        )
    );
  }

  Widget _joinForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormFieldOuter(
            controller: _nicknameController,
            hint: "별명",
            funValidator: validatorNickName(),
          ),
          CustomTextFormFieldOuter(
            controller: _emailController,
            hint: "이메일",
            funValidator: validatorEmail(),
          ),
          CustomTextFormFieldOuter(
            controller: _passwordController,
            hint: "비밀번호",
            funValidator: validatorPassword(),
          ),
          CustomTextFormFieldOuter(
            controller: _confirmPasswordController,
            hint: "비밀번호 확인",
            funValidator: (value) {
              if (value.isEmpty) {
                return "Please confirm password";
              } else if (_passwordController.text != value) {
                return "Passwords do not match";
              }
              return null;
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: CustomElevatedButton(
              text: "회원가입",
              funPageRoute: () async {
                if (_formKey.currentState!.validate()) {
                  bool isRegistered = await userController.join(
                    _emailController.text.trim(),
                    _passwordController.text.trim(),
                    _nicknameController.text.trim(),
                  );
                  if (isRegistered) {
                    Get.snackbar("회원가입 성공", "로그인 페이지로 이동");
                    Get.to(() => LoginPage());
                  } else {
                    Get.snackbar("회원가입 실패", "다시 시도해주세요");
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
