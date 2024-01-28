import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_underline_field.dart';
import 'package:aet/AET/screens/home.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/AET/login/join_page.dart';
import 'package:aet/util/validator_util.dart';


void main() => runApp(loginPage());

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final UserController u = Get.put(UserController());
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                height: 100,
                child: Text(
                  "짐보따리",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pretendard",
                      color: AppColor.darkGreen
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0,50,0,0),
                child: _loginFrom(),
              ),
            ],
          ),
        )
    );
  }

  Widget _loginFrom() {
    return Form(
      key: _formKey,
      child: Column(
        children:[
          CustomTextFormFieldUnder(
              controller: _email,
              hint: "짐보따리 이메일",
              funValidator:validatorEmail()),
          CustomTextFormFieldUnder(
              controller: _password,
              hint: "비밀번호",
              funValidator:validatorPassword()),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: CustomElevatedButton(
                text: "로그인",
                funPageRoute: () async{
                  if (_formKey.currentState!.validate()) {
                    int result =
                    await u.login(_email.text.trim(), _password.text.trim());
                    if (result == 1) {
                      Get.to(() => homeMain());
                    } else {
                      Get.snackbar("로그인 시도", "로그인 실패");
                    }
                  }
                },
            ),
          ),
          TextButton(
            onPressed: (){
             Get.to(JoinPage());
            },
            child:Text("회원가입 하러가기",style: TextStyle(color: AppColor.green,fontFamily: "Pretendard",),),
          ),
        ],
      ),
    );
  }
}
