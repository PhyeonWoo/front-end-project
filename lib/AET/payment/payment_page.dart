import 'package:aet/AET/components/custom_choice_chips.dart';
import 'package:aet/AET/payment/payment_result.dart';
import 'package:aet/AET/screens/navigation/homeNavigation.dart';
import 'package:aet/controller/bottom_nav_controller.dart';
import 'package:aet/controller/pay_chips_controller.dart';
import 'package:aet/controller/toss_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/Key.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:intl/intl.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_info.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';
import 'package:tosspayments_widget_sdk_flutter/model/selected_payment_method.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';
import 'package:tosspayments_widget_sdk_flutter/payment_widget.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/agreement.dart';
import 'package:tosspayments_widget_sdk_flutter/widgets/payment_method.dart';

class PaymentWidgetExamplePage extends StatefulWidget {
  const PaymentWidgetExamplePage({
    super.key,
  });

  @override
  State<PaymentWidgetExamplePage> createState() {
    return _PaymentWidgetExamplePageState();
  }
}

class _PaymentWidgetExamplePageState extends State<PaymentWidgetExamplePage> {
  final PayChoiceChipController controller = Get.put(PayChoiceChipController());
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());
  late PaymentWidget _paymentWidget;
  PaymentMethodWidgetControl? _paymentMethodWidgetControl;
  AgreementWidgetControl? _agreementWidgetControl;
  SelectedPaymentMethod? selectedPaymentMethod;

  num? newAmount;

  @override
  void initState() {
    super.initState();

    /// PaymentWidget 객체를 초기화합니다.
    _paymentWidget = PaymentWidget(
      clientKey: clientKey,
      customerKey: customerKey,
    );
    _paymentWidget
        .renderPaymentMethods(
      selector: 'methods',
      amount: Amount(
          value: newAmount = 5000, currency: Currency.KRW, country: "KR"),
        options: RenderPaymentMethodsOptions(variantKey: "DEFAULT")
    )
        .then((control) {
      _paymentMethodWidgetControl = control;
    });
    _paymentWidget
        .renderAgreement(
      selector: 'agreement',
    )
        .then((control) {
      _agreementWidgetControl = control;
    });
  }

  @override
  Widget build(BuildContext context) {
    final TossController t = Get.put(TossController());
    final UserController u = Get.put(UserController());

    String formattedNumber = u.principal.value?.point != null
        ? NumberFormat('#,##0', 'en_US').format(u.principal.value!.point)
        : '0';

    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: CustomAppbar(
        titleWrite: "포인트 충전하기",
        BackButton: true,
      ),
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
                              fontFamily: 'Pretendard',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: Text(
                            "${formattedNumber}",
                            style: TextStyle(
                              color: AppColor.green,
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pretendard',
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
                                    isSelected:
                                        controller.selectedValue.value == 1,
                                    onSelected: () async {
                                      setState(() {
                                        controller.selectedValue(1);
                                      });
                                      if (controller.selectedValue.value == 1) {
                                        await _paymentMethodWidgetControl
                                            ?.updateAmount(
                                                amount: newAmount = 5000);
                                        print(
                                            '결제 금액이 ${newAmount}원으로 변경되었습니다.');
                                      }
                                    },
                                  )),
                              Obx(() => CustomChoiceChip(
                                    price: '10,000P',
                                    description: '사용기한 1개월',
                                    money: '10,000원',
                                    isSelected:
                                        controller.selectedValue.value == 2,
                                    onSelected: () async {
                                      setState(() {
                                        controller.selectedValue(2);
                                      });
                                      if (controller.selectedValue.value == 2) {
                                        await _paymentMethodWidgetControl
                                            ?.updateAmount(
                                                amount: newAmount = 10000);
                                        print('결제 금액이 $newAmount원으로 변경되었습니다.');
                                      }
                                    },
                                  )),
                              Obx(() => CustomChoiceChip(
                                    price: '15,000P',
                                    description: '사용기한 1개월',
                                    money: '15,000원',
                                    isSelected:
                                        controller.selectedValue.value == 3,
                                    onSelected: () async {
                                      setState(() {
                                        controller.selectedValue(3);
                                      });
                                      if (controller.selectedValue.value == 3) {
                                        await _paymentMethodWidgetControl
                                            ?.updateAmount(
                                                amount: newAmount = 15000);
                                        print('결제 금액이 $newAmount원으로 변경되었습니다.');
                                      }
                                    },
                                  )),
                              Obx(() => CustomChoiceChip(
                                    price: '20,000P',
                                    description: '사용기한 1개월',
                                    money: '20,000원',
                                    isSelected:
                                        controller.selectedValue.value == 4,
                                    onSelected: () async {
                                      setState(() {
                                        controller.selectedValue(4);
                                      });
                                      if (controller.selectedValue.value == 4) {
                                        await _paymentMethodWidgetControl
                                            ?.updateAmount(
                                                amount: newAmount = 20000);
                                        print('결제 금액이 $newAmount원으로 변경되었습니다.');
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
                            selector: 'agreement'),
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
      bottomSheet: Obx(
        () => controller.show.value
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
                      if (_agreementWidgetControl == null ||
                          _paymentMethodWidgetControl == null) {
                        print('requestPayment 결제위젯이 렌더링되지 않았습니다.');
                        return;
                      }

                      final agreement =
                          await _agreementWidgetControl?.getAgreementStatus();
                      if (agreement?.agreedRequiredTerms != true) {
                        if (!mounted) return;
                        print('requestPayment 필수 약관에 모두 동의하지 않았습니다.');
                        return;
                      }

                      /// [requestPayment]를 통해 결제창으로 이동합니다.
                      print("결제 시작");
                      final selected = await _paymentMethodWidgetControl
                          ?.getSelectedPaymentMethod();
                      t.payType(selected?.method);
                      t.amount(newAmount);
                      bool success = await t.tossPayment();
                      if (success) {
                        print("서버 결제 전송 성공");
                        final Result paymentResult =
                            await _paymentWidget.requestPayment(
                                paymentInfo: PaymentInfo(
                                    orderId: "${t.orderId}",
                                    orderName: "${t.orderName}"));
                        Success? success = paymentResult.success;
                        if (success != null) {
                          var result = await t.fetchPaymentResponse;
                          if (result != null) {
                            print('Toss payment succeeded: $result');
                            await u.savePoints(u.principal.value.memberId!, newAmount!);
                          } else {
                            print('Toss payment failed');
                          }
                          Get.snackbar("결제 성공", "포인트 충전");
                          await u.fetchUserPoints(u.principal.value.memberId!);
                          bottomNavController.tabIndex.value = 0;
                          Get.to(() => Navigation(),
                              arguments: paymentResult.success);
                        } else if (paymentResult.fail != null) {
                          Get.to(() => ResultPage(),
                              arguments: paymentResult.fail);
                        }
                      } else {
                        print("결제 실패 또는 결제 방법이 선택되지 않음");
                      }
                    },
                    child: Text(
                      '결제하기',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pretendard',
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
