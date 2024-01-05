import 'package:flutter/material.dart';

class CustomPayChoice extends StatelessWidget {
  final IconData iconData;
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;

  const CustomPayChoice({
    required this.iconData,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    Color borderColor = isSelected ? Color(0xff399148) : Color(0xffD8D8D8);
    Color textColor = isSelected ? Color(0xff399148) : Color(0xFF4F4F4F);

    return GestureDetector(
      onTap: onSelected,
      child: Padding(
        padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 80,
            minHeight: 45,
          ),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1.0),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(iconData, color: textColor, size: 14), // 아이콘 추가
              Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
