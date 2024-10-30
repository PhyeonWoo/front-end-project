import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:aet/AET/auth/login_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => LoginPage());
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom:100.0),
        child: Center(
          child: AspectRatio(
              aspectRatio: 0.3,
              child: SvgPicture.asset('assets/images/Logo.svg')),
        ),
      ),
    );
  }
}
