import 'package:aet/AET/auth/join_page.dart';
import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_text_form_underline_field.dart';
import 'package:aet/AET/screens/navigation/homeNavigation.dart';
import 'package:aet/controller/gym_controller.dart';
import 'package:aet/controller/ticket_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/util/validator_util.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final UserController u = Get.put(UserController());
  final GymController g = Get.put(GymController());
  final TicketController t = Get.put(TicketController());
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10,),
            Text(
              "짐보따리",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pretendard",
                  color: AppColor.darkGreen),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
              child: _loginForm(),
            ),
            SizedBox(
              height: 100,
            ),
            // CustomList(
            //   textWrite: "로그인",
            //   onClick: () => Get.to(Navigation()),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormFieldUnder(
              controller: _email,
              hint: "짐보따리 이메일",
              funValidator: validatorEmail()),
          CustomTextFormFieldUnder(
              controller: _password,
              hint: "비밀번호",
              funValidator: validatorPassword()),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: CustomElevatedButton(
              widthSize: 300,
              heightSize: 50,
              text: "로그인",
              funPageRoute: () async {
                if (_formKey.currentState!.validate()) {
                  User? result =
                      await u.login(_email.text.trim(), _password.text.trim());
                  if (result != null) {
                    await u.fetchUserPoints(u.Token.value.memberId!);
                    print(u.Token.value.accessToken);
                    await g.isLoading.value;
                    await t.fetchTickets(u.principal.value.memberId!);
                    Get.to(Navigation());
                  } else {
                    Get.snackbar("로그인 시도", "로그인 실패");
                  }
                } else {
                  Get.snackbar("로그인 시도", "로그인 실패");
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: CustomElevatedButton(
              widthSize: 300,
              heightSize: 50,
              text: "게스트로 로그인",
              funPageRoute: () async {
                await u.login("guest", "guest");
                await u.fetchUserPoints(u.Token.value.memberId!);
                await g.isLoading.value;
                await t.fetchTickets(u.principal.value.memberId!);
                print("");
                Get.to(Navigation());
              },
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(JoinPage());
            },
            child: Text(
              "회원가입 하러가기",
              style: TextStyle(
                color: AppColor.green,
                fontFamily: "Pretendard",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
