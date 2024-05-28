import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';


class CustomList extends StatelessWidget {
  final String textWrite;
  final VoidCallback onClick;

  const CustomList({
    required this.textWrite,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      style: TextButton.styleFrom(
        elevation: 0.5,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textWrite,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 0,
              thickness: 0,
            ),
          ],
        ),
      ),
    );
  }
}

