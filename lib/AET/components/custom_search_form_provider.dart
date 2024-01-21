import 'package:flutter/material.dart';

class CustomSearchFormProvider extends StatelessWidget {
  final String hint;
  final funValidator;
  final String? value;
  final TextEditingController? controller;

  const CustomSearchFormProvider({
    required this.hint,
    required this.funValidator,
    this.value,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45, // 여기서 높이를 설정합니다.
          child: TextFormField(
            controller: controller,
            initialValue: value,
            validator: funValidator,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding:  EdgeInsets.fromLTRB(0, 10, 50, 0),
              filled: true,
              fillColor: Color(0xFFffffff),
              hintText: "찾으시는 종목을 검색해보세요. ",
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "customFont",
                color: Color(0xFF399148)
              ),
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                onPressed: (){},
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFffffff), width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFffffff), width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFffffff), width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFffffff), width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
