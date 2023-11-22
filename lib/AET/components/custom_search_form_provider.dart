import 'package:flutter/material.dart';

class CustomSearchFormProvider extends StatelessWidget {
  final String hint;
  final funValidator;
  final String? value;
  final controller;

  const CustomSearchFormProvider({
    required this.hint,
    required this.funValidator,
    this.value,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50,10,50,0),
      child: TextFormField(
        controller: controller,
        initialValue: value,
        validator: funValidator,
        decoration: InputDecoration(
          filled: true, // 배경색 채우기 활성화
          fillColor: Colors.white, // 원하는 배경색 설정
          hintText: "Search $hint",
          hintStyle: TextStyle(fontSize: 15) ,
          suffixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white, width: 0.8,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white, width: 0.8,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white, width: 0.8,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white, width: 0.8,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
