import 'package:flutter/material.dart';
import 'package:aet/util/color.dart';

class CustomUnderLine extends StatelessWidget {
  final String category;
  final bool isSelected;
  final VoidCallback onSelected;

  const CustomUnderLine({
    required this.category,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor = isSelected ? AppColor.darkGrey : AppColor.lightGrey; // 선택 시 텍스트 색상 변경
    Color underlineColor = isSelected ? AppColor.darkGreen : AppColor.lightGrey; // 선택 시 언더라인 색상 변경

    return GestureDetector(
      onTap: onSelected,
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text(
              category,
              style: TextStyle(
                color: textColor, // 선택된 상태에 따라 색상 변경
                fontSize: 22,
                fontWeight: FontWeight.w700,
                fontFamily: 'Pretendard',
              ),
            ),
            SizedBox(height: 7), // 텍스트와 언더라인 사이의 간격 추가
            Container(
              height: 2.5, // 언더라인 두께
              width: MediaQuery.of(context).size.width / 4,
              color: underlineColor, // 선택된 상태에 따라 색상 변경
            ),
          ],
        ),
      ),
    );
  }
}
