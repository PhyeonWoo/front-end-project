import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCheckbox extends StatelessWidget {
  final isChecked;
  final VoidCallback toggleCheckbox;
  CustomCheckbox({required this.isChecked, required this.toggleCheckbox});

  @override
  Widget build(BuildContext context) {
    return Obx(() => InkWell(
      onTap: toggleCheckbox,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: isChecked.value ? Color(0xFF399148) : Color(0xFF399148)),
          borderRadius: BorderRadius.circular(2.0),
          color: isChecked.value ? Colors.green : Colors.transparent,
        ),
        width: 17,
        height: 17,
        child: isChecked.value
            ? Icon(Icons.check, size: 12, color: Colors.white)
            : null,
      ),
    ));
  }
}
