import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final funPageRoute;

  const CustomBottomSheet({required this.title, required this.funPageRoute});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 100,
          color: AppColor.bottomSheet,
          child: Center(
            child: CustomElevatedButton(text: title, funPageRoute: funPageRoute, heightSize: 45, widthSize: 180,),
          ),
        );
      },
    );
  }
}
