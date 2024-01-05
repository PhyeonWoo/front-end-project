import 'package:aet/AET/components/custom_checkbox.dart';
import 'package:aet/controller/pay_syteam_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentOptions extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomCheckbox(
            isChecked: controller.isOption0Checked,
            toggleCheckbox: controller.toggleOption0
        ),
        CustomCheckbox(
            isChecked: controller.isOption1Checked,
            toggleCheckbox: controller.toggleOption1
        ),
        CustomCheckbox(
            isChecked: controller.isOption2Checked,
            toggleCheckbox: controller.toggleOption2
        ),
        CustomCheckbox(
            isChecked: controller.isOption3Checked,
            toggleCheckbox: controller.toggleOption3
        ),// 나머지 옵션들에 대한 체크박스 위젯들을 추가할 수 있습니다.
      ],
    );
  }
}
