// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:aet/AET/components/custom_pay_choice.dart';
// import 'package:aet/controller/pay_chips_controller.dart';
//
// class PayChoice extends StatelessWidget {
//   final PayChipsController controller = Get.put(PayChipsController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Obx(() => CustomPayChoice(
//             iconData: Icons.payment,
//             label: 'TOSS',
//             isSelected: controller.selectedIndex.value == 1,
//             onSelected: () {
//               controller.selectPay(1);
//               controller.setSelectedRadio(1);
//             },
//           )),
//           Obx(() => CustomPayChoice(
//             iconData: Icons.credit_card,
//             label: 'Naver',
//             isSelected: controller.selectedIndex.value == 2,
//             onSelected: () {
//               controller.selectPay(2);
//               controller.setSelectedRadio(1);
//             },
//           )),
//           Obx(() => CustomPayChoice(
//             iconData: Icons.credit_card,
//             label: 'kakao',
//             isSelected: controller.selectedIndex.value == 3,
//             onSelected: () {
//               controller.selectPay(3);
//               controller.setSelectedRadio(1);
//             },
//           )),
//           Obx(() => CustomPayChoice(
//             iconData: Icons.credit_card,
//             label: 'payco',
//             isSelected: controller.selectedIndex.value == 4,
//             onSelected: () {
//               controller.selectPay(4);
//               controller.setSelectedRadio(1);
//             },
//           )),
//         ],
//       ),
//     );
//   }
// }
