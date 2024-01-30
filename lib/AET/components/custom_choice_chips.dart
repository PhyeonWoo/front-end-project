import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatelessWidget {
  final String price;
  final String description;
  final String money;
  final bool isSelected;
  final VoidCallback onSelected;

  const CustomChoiceChip({
    required this.price,
    required this.description,
    required this.money,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    Color borderColor = isSelected ? AppColor.green : AppColor.lightWhite;

    return GestureDetector(
      onTap: onSelected,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 90,
          minHeight: 120,
        ),
        padding: EdgeInsets.all(5.0),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              price,
              style: TextStyle(
                color: AppColor.green,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: 'Pretendard',
              ),
            ),
            Container(
              height: 0.5,
              width: (MediaQuery.of(context).size.width) / 4 - 20,
              color: AppColor.lightWhite,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                money,
                style: TextStyle(
                  color: AppColor.green,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Pretendard',
                ),
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: AppColor.darkGrey,
                fontSize: 12,
                fontFamily: 'Pretendard',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
