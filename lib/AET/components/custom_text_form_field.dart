import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final funValidator;
  final String? value;
  final controller;

  const CustomTextFormField({
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
        obscureText: hint == "Password" ? true : false,
        decoration: InputDecoration(
          hintText: "Enter $hint",
          hintStyle: TextStyle(fontSize: 15) ,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.orangeAccent,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
              ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
