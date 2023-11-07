import 'package:aet/AET/login/join_page.dart';
import 'package:aet/AET/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
