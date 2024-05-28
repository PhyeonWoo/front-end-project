import 'package:aet/controller/dto/TossPayDto.dart';
import 'package:aet/domain/toss/toss_repository.dart';
import 'package:aet/domain/toss/toss_response.dart';
import 'package:aet/util/host.dart';
import 'package:get/get.dart';

class TossController extends GetxController {
  final TossRepository _tossRepository = TossRepository();
  var payType = Rxn<String>();
  var amount = Rxn<num>();
  Rx<TossPayData?> tossPayData = Rx<TossPayData?>(null);
  String? orderId;
  String? orderName;
  Rx<PaymentSuccessResponse?> paymentSuccessResult = Rx<PaymentSuccessResponse?>(null);

  void setTossPayData(TossPayData data) {
    tossPayData.value = data;
    orderId = data.orderId;
    orderName = data.orderName;
  }

  Future<bool> tossPayment() async {
    if (payType.value == null || amount.value == null) {
      print("Payment type or amount not provided.");
      return false;
    }

    String? paymentMethod = await _getPaymentMethod(payType.value!);
    print(paymentMethod);
    if (paymentMethod == null) {
      print("Invalid payment type provided: ${payType.value}");
      return false;
    }

    TossPayData? paymentData = await _tossRepository.tossPayment(
      payType: paymentMethod,
      amount: amount.value!,
      orderName: orderName ?? "테스트결제",
      successUrl: "$host/payments/toss/success",
      failUrl: "$host/payments/toss/fail",
    );

    if (paymentData != null) {
      setTossPayData(paymentData);
      return true;
    }
    return false;
  }

  String? _getPaymentMethod(String type) {
    switch (type) {
      case "카드": return "CARD";
      case "현금": return "CASH";
      case "포인트": return "POINT";
      default: return null;
    }
  }

  Future<PaymentSuccessResponse> fetchPaymentResponse(String paymentKey, String orderId, num amount, {required bool isSuccess}) async {
    PaymentSuccessResponse? result = isSuccess
        ? await _tossRepository.tossPaymentSuccess(paymentKey, orderId, amount)
        : await _tossRepository.tossPaymentFail(orderId, paymentKey, amount.toString());
    paymentSuccessResult.value = result;
    return result ?? PaymentSuccessResponse(success: false, message: "결제 처리 실패");
  }
}
