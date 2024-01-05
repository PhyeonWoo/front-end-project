import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/components/custom_bottom_payment.dart';
import 'package:aet/AET/payment/payment_checkbox.dart';
import 'package:aet/AET/payment/payment_payradio.dart';
import 'package:aet/AET/payment/payment_pointbox.dart';
import 'package:aet/controller/pay_nav_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  final PayBottomController controller = Get.put(PayBottomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffffff),
      appBar: CustomAppbar(
        titleWrite: '포인트 충전하기',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PointBox(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PayRadio(),
            ),
            PaymentOptions(), // PaymentOptions를 Column의 자식으로 포함
            // 다른 위젯들을 추가할 수 있습니다.
          ],
        ),
      ),
      bottomSheet: Obx(() => controller.show.value
          ? CustomOne()
          : SizedBox.shrink()), // 바텀 시트를 표시하거나 숨깁니다.
    );
  }
}
