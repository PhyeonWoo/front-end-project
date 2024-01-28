import 'package:aet/util/color.dart';
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
              contentPadding:  EdgeInsets.fromLTRB(0, 20, 50, 0),
              filled: true,
              fillColor: Colors.white,
              hintText: "찾으시는 종목을 검색해보세요.",
              hintStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: "Pretendard",
                color: AppColor.green
              ),
              prefixIcon: IconButton(
                icon: Icon(Icons.search),
                color: AppColor.green,
                onPressed: (){},
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white, width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white, width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white, width: 1,
                ),
                borderRadius: BorderRadius.circular(3),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white, width: 1,
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
