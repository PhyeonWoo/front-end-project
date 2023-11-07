import 'package:aet/AET/Bottom/home.dart';
import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_field.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/AET/login/join_page.dart';
import 'package:aet/util/vaildator_util.dart';

// void main() => runApp(LoginPage());

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
  final _username = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(100.0),
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
              controller: _username,
              hint: "Username",
              funValidator:validatorUsername()),
          CustomTextFormField(
              controller: _password,
              hint: "Password",
              funValidator:validatorPassword()),
          CustomElevatedButton(
              text: "로그인",
              funPageRoute: () async{
                if(_formKey.currentState!.validate()){
                  String token = await u.login(_username.text.trim(),_password.text.trim());
                  if(token != null){
                    print("토큰을 정상적으로 받음");
                    Get.to(() => main_home());
                  } else{
                    Get.snackbar("로그인 시도", "로그인 실패");
                  }
                }
              },
          ),
          TextButton(
            onPressed: (){
             Get.to(JoinPage());
            },
            child:Text("회원 가입 하러가기"),
          ),
        ],
      ),
    );
  }
}
