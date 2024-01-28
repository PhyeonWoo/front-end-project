// import 'package:aet/AET/payment/payment_paychoice.dart';
// import 'package:aet/controller/pay_chips_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class PayRadio extends StatelessWidget {
//   // GetX 컨트롤러 인스턴스를 생성합니다.
//   final PayChipsController controller = Get.put(PayChipsController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: Color(0xFF399148), // 테두리 색상 설정
//             width: 1, // 테두리 두께 설정
//           ),
//           borderRadius: BorderRadius.circular(5),
//           ),
//           width: 380,
//           height: 170,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       Obx(() => Transform.scale(
//                         scale: 0.8,
//                         child: Radio(
//                           value: 1,
//                           groupValue: controller.selectedRadio.value,
//                           activeColor: Color(0xFF399148),
//                           onChanged: (int? value) {
//                             if (value != null) {
//                               controller.setSelectedRadio(value);
//                               controller.selectPay(value);
//                             }
//                           },
//                         ),
//                       )
//                       ),
//                       Padding(
//                         padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // 여기서 간격 조절
//                         child: Text(
//                           '간편결제',
//                           style: TextStyle(
//                             color: Color(0xFF4F4F4F),
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600,
//                             fontFamily: 'customFonts',
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 20),
//                     child: PayChoice(),
//                   ),
//                   Container(
//                     height: 0.5,
//                     width: MediaQuery.of(context).size.width - 40, // 선의 길이 조정
//                     color: Color(0xFF399148),
//                   ),
//                   Row(
//                     children: [
//                       Row(
//                         children: [
//                           Obx(() => Transform.scale(
//                             scale: 0.8,
//                             child: Radio(
//                               value: 2,
//                               groupValue: controller.selectedRadio.value,
//                               activeColor: Color(0xFF399148),
//                               onChanged: (int? value) {
//                                 if (value != null) {
//                                   controller.setSelectedRadio(value);
//                                 }
//                               },
//                             ),
//                           )
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // 여기서 간격 조절
//                             child: Text(
//                               '신용카드',
//                               style: TextStyle(
//                                 color: Color(0xFF4F4F4F),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.normal,
//                                 fontFamily: 'customFonts',
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Obx(() => Transform.scale(
//                             scale: 0.8,
//                             child: Radio(
//                               value: 3,
//                               groupValue: controller.selectedRadio.value,
//                               activeColor: Color(0xFF399148),
//                               onChanged: (int? value) {
//                                 if (value != null) {
//                                   controller.setSelectedRadio(value);
//                                 }
//                               },
//                             ),
//                           )
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // 여기서 간격 조절
//                             child: Text(
//                               '무통장입금',
//                               style: TextStyle(
//                                 color: Color(0xFF4F4F4F),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.normal,
//                                 fontFamily: 'customFonts',
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Obx(() => Transform.scale(
//                             scale: 0.8,
//                             child: Radio(
//                               value: 4,
//                               groupValue: controller.selectedRadio.value,
//                               activeColor: Color(0xFF399148),
//                               onChanged: (int? value) {
//                                 if (value != null) {
//                                   controller.setSelectedRadio(value);
//                                 }
//                               },
//                             ),
//                           )
//                           ),
//                           Padding(
//                             padding: EdgeInsets.fromLTRB(0, 0, 0, 0), // 여기서 간격 조절
//                             child: Text(
//                               '휴대폰결제',
//                               style: TextStyle(
//                                 color: Color(0xFF4F4F4F),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.normal,
//                                 fontFamily: 'customFonts',
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // Row(
// // children: [
// // Obx(() => Transform.scale(
// // scale: 0.8,
// // child: Radio(
// // value: 1,
// // groupValue: controller.selectedRadio.value,
// // activeColor: Color(0xFF399148),
// // onChanged: (int? value) {
// // if (value != null) {
// // controller.setSelectedRadio(value);
// // }
// // },
// // ),
// // )
// // ),
// // Padding(
// // padding: EdgeInsets.fromLTRB(3, 0, 0, 0), // 여기서 간격 조절
// // child: Text(
// // '보따리 PAY',
// // style: TextStyle(
// // color: Color(0xFF4F4F4F),
// // fontSize: 18,
// // fontWeight: FontWeight.bold,
// // fontFamily: 'customFonts',
// // ),
// // ),
// // ),
// // ],
// // ),