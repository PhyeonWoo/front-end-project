import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_field.dart';
import 'package:aet/AET/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';
import 'package:aet/util/vaildator_util.dart';

void main() => runApp(JoinPage());

class JoinPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
                  "회원가입 페이지",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              _joinFrom(),
            ],
          ),
        )
    );
  }

  Widget _joinFrom() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
              hint: "Username",
              funValidator: validatorUsername()
          ),
          CustomTextFormField(
              hint: "Password", funValidator: validatorPassword()
          ),
          // CustomTextFormField(
          //     hint: "PasswordCheck", funValidator: validatorPasswordCheck()
          // ),
          CustomTextFormField(hint: "Email", funValidator: validatorEmail()
          ),
          CustomElevatedButton(
              text: "회원가입",
              funPageRoute: () {
                if(_formKey.currentState!.validate()){
                Get.to(LoginPage());}
              }),
        ],
      ),
    );
  }
}