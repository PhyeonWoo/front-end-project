import 'package:flutter/material.dart';

class CustomTextFormFieldOuter extends StatelessWidget {
  final String hint;
  final funValidator;
  final String? value;
  final controller;

  const CustomTextFormFieldOuter({
    required this.hint,
    required this.funValidator,
    this.value,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        initialValue: value,
        validator: funValidator,
        obscureText: hint == "비밀번호" ? true : false || hint =="비밀번호 확인"? true : false,
        decoration: InputDecoration(
          hintText: "$hint",
          hintStyle: TextStyle(
              fontSize: 16,
              fontFamily: "customFonts"),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF399148),
            ),
            borderRadius: BorderRadius.circular(10)
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
