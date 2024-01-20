
import 'package:aet/AET/Sports_Category/main_home.dart';
import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_field.dart';
import 'package:aet/controller/user_controller.dart';
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
  final _Email = TextEditingController();
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
                height: 150,
                child: Text(
                  "로그인 페이지",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              _loginFrom(),
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
          CustomTextFormField(
              controller: _Email,
              hint: "Email",
              funValidator:validatorEmail()),
          CustomTextFormField(
              controller: _password,
              hint: "Password",
              funValidator:validatorPassword()),
          CustomElevatedButton(
              text: "로그인",
              funPageRoute: () async{
                if (_formKey.currentState!.validate()) {
                  int result =
                  await u.login(_Email.text.trim(), _password.text.trim());
                  if (result == 1) {
                    Get.to(() => sports_home());
                  } else {
                    Get.snackbar("로그인 시도", "로그인 실패");
                  }
                }
              },
          ),
          TextButton(
            onPressed: (){
             Get.to(JoinPage());
            },
            child:Text("회원가입 하러가기"),
          ),
        ],
      ),
    );
  }
}
