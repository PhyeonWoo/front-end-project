import 'package:aet/AET/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final funPageRoute;

  const CustomElevatedButton({required this.text, required this.funPageRoute});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity,50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onPressed: funPageRoute,
          child: Text("$text"),
      ),
    );
  }
}
