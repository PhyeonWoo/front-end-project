import 'package:aet/AET/components/custom_choice_chips.dart';
import 'package:aet/controller/pay_chips_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

class PaymentWidgetExamplePage extends StatefulWidget {
  const PaymentWidgetExamplePage({super.key});

  @override
  State<PaymentWidgetExamplePage> createState() => _PaymentWidgetExamplePageState();
}

class _PaymentWidgetExamplePageState extends State<PaymentWidgetExamplePage> {
  late PaymentWidget _paymentWidget;
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;
  final PayChoiceChipController controller = Get.put(PayChoiceChipController());

  @override
  void initState() {
    super.initState();
    _paymentWidget = PaymentWidget(
      clientKey: "test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm",
      customerKey: "Z6o4ZOnUm-3ndSvpLiSn-",
    );
    _paymentWidget.renderPaymentMethods(
      selector: 'methods',
      amount: Amount(value: 5000, currency: Currency.KRW, country: "KR"),
      options: RenderPaymentMethodsOptions(variantKey: "DEFAULT"),
    ).then((control) {
      _paymentMethodWidgetControl = control;
    });
    _paymentWidget.renderAgreement(selector: 'agreement').then((control) {
      _agreementWidgetControl = control;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleWrite: "포인트 충전하기",BackButton: true,),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          child: Text(
                            "현재 보유하고 있는 포인트",
                            style: TextStyle(
                              color: AppColor.darkGrey,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'customFonts',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: Text(
                            "50,000P",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'customFonts',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => CustomChoiceChip(
                                price: '5,000P',
                                description: '사용기한 1개월',
                                money: '5,000원',
                                isSelected: controller.selectedValue.value == 1,
                                onSelected: () async{
                                  setState(() {
                                    controller.selectedValue(1);;
                                  });
                                 if (controller.selectedValue.value == 1){
                                  await _paymentMethodWidgetControl?.updateAmount(amount: 5000);
                                  print('결제 금액이 $Amount원으로 변경되었습니다.');
                                  }
                                },
                              )),
                              Obx(() => CustomChoiceChip(
                                price: '10,000P',
                                description: '사용기한 1개월',
                                money: '10,000원',
                                isSelected: controller.selectedValue.value == 2,
                                onSelected: () async{
                                  setState(() {
                                    controller.selectedValue(2);
                                  });
                                  if (controller.selectedValue.value == 2){
                                    await _paymentMethodWidgetControl?.updateAmount(amount: 10000);
                                    print('결제 금액이 $Amount원으로 변경되었습니다.');
                                  }
                                },
                              )),
                              Obx(() => CustomChoiceChip(
                                price: '15,000P',
                                description: '사용기한 1개월',
                                money: '15,000원',
                                isSelected: controller.selectedValue.value == 3,
                                onSelected: () async{
                                  setState(() {
                                    controller.selectedValue(3);
                                  });
                                  if (controller.selectedValue.value == 3){
                                    await _paymentMethodWidgetControl?.updateAmount(amount: 15000);
                                    print('결제 금액이 $Amount원으로 변경되었습니다.');
                                  }
                                },
                              )),
                              Obx(() => CustomChoiceChip(
                                price: '20,000P',
                                description: '사용기한 1개월',
                                money: '20,000원',
                                isSelected: controller.selectedValue.value == 4,
                                onSelected: () async{
                                  setState(() {
                                    controller.selectedValue(4);
                                  });
                                  if (controller.selectedValue.value == 4){
                                    await _paymentMethodWidgetControl?.updateAmount(amount: 20000);
                                    print('결제 금액이 $Amount원으로 변경되었습니다.');
                                  }
                                },
                              )),
                            ],
                          ),
                        ),
                        PaymentMethodWidget(
                          paymentWidget: _paymentWidget,
                          selector: 'methods',
                        ),
                        AgreementWidget(
                            paymentWidget: _paymentWidget,
                            selector: 'agreement'
                        ),
                        SizedBox(height: 100)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Obx(() => controller.show.value
          ? Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.green,
              shadowColor: Colors.black.withOpacity(0.5),
              elevation: 5,
              minimumSize: Size(180, 45),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () async {
              print('결제 버튼이 눌렸습니다.');
              try {
                final paymentResult = await _paymentWidget.requestPayment(
                    paymentInfo: const PaymentInfo(
                        orderId: 't70AdNCe7cIc1Sk1ZqgEh',
                        orderName: '테스트 결제'
                    )
                );
                if (paymentResult.success != null) {
                  // 결제 성공 처리
                  print('결제가 성공적으로 완료되었습니다.');
                } else if (paymentResult.fail != null) {
                  // 결제 실패 처리
                  print('결제에 실패했습니다: ${paymentResult.fail?.errorMessage}');
                }
              } catch (e) {
                // 예외 처리
                print('결제 처리 중 오류가 발생했습니다: $e');
              }
            },
            child: Text(
              '결제하기',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'customFonts',
                color: Colors.white,
              ),
            ),
          ),
        ),
      )
          : SizedBox.shrink(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentWidgetExamplePage(),
    );
  }
}
