import 'package:aet/AET/auth/login_page.dart';
import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_outline_field.dart';
import 'package:aet/controller/authcode_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/util/validator_util.dart';

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final UserController u = Get.find<UserController>();
  final AuthCodeController a = Get.put(AuthCodeController());

  final _emailController = TextEditingController();
  final _authCodeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _nicknameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(50,100,50,100),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "회원가입",
                style: TextStyle(
                    fontSize: 32,
                    color: AppColor.darkGreen,
                    fontWeight: FontWeight.bold
                  ),
              ),
              SingleChildScrollView(child: _joinForm()),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              CustomElevatedButton(
                widthSize: 300,
                heightSize: 50,
                text: "회원가입",
                funPageRoute: () async {
                    if (_formKey.currentState!.validate()) {
                      bool isRegistered = await u.join(
                        _emailController.text.trim(),
                        _passwordController.text.trim(),
                        _nicknameController.text.trim(),
                      );
                      if (isRegistered) {
                        if (a.authCodeSend == true && a.authCodeCheck == true) {
                          Get.snackbar("회원가입 성공", "로그인 페이지로 이동");
                          u.savePoints(u.principal.value.memberId!, 0);
                          Get.to(() => LoginPage());
                        }
                      } else {
                        Get.snackbar("회원가입 실패", "다시 시도해주세요");
                    }
                  }
                },
              ),
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
            hint: "닉네임",
            funValidator: validatorNickName(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: CustomTextFormFieldOuter(
                  controller: _emailController,
                  hint: "이메일",
                  funValidator: validatorEmail(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 7),
                child: CustomElevatedButton(
                  widthSize: 100,
                  heightSize: 50,
                  text: "코드전송",
                  funPageRoute: () async{
                    if(_emailController.text.isNotEmpty){
                    await a.requestEmailVerificationCode(_emailController.text);
                    }
                  },
                ),
              ),
            ],
          ),
          Obx(() {
            if (a.authCodeSend == true) {
              return Text("인증 코드가 전송되었습니다.");
            } else {
              return SizedBox.shrink();
            }
          }),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: CustomTextFormFieldOuter(
                  controller: _authCodeController,
                  hint: "인증번호",
                  funValidator: validatorAuthCode(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10,top: 7),
                child: CustomElevatedButton(
                  widthSize: 100,
                  heightSize: 50,
                  text: "확인하기",
                  funPageRoute: ()async{
                    await a.verifyEmailCode(_emailController.text,_authCodeController.text);
                  },
                ),
              ),
            ],
          ),
          Obx(() {
            if (a.authCodeCheck == true) {
              return Text("확인되었습니다.");
            } else {
              return SizedBox.shrink();
            }
          }),
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
                return "비밀번호를 다시 입력해주세요.";
              } else if (_passwordController.text != value) {
                return "비밀번호가 일치하지 않습니다.";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
