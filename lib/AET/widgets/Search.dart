import 'package:flutter/material.dart';
import 'package:get/get.dart';

class leading_action_ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Screen A Page"),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}