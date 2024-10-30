import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final funPageRoute;
  final double widthSize;
  final double heightSize;
  final Color ButtonColors;

  const CustomElevatedButton({
    required this.text,
    required this.funPageRoute,
    required this.widthSize,
    required this.heightSize,
    this.ButtonColors = AppColor.green,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ButtonColors,
            minimumSize: Size(widthSize,heightSize),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: funPageRoute,
          child: Text("$text",
            style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: "Pretendard",
          ),
        ),
    );
  }
}
