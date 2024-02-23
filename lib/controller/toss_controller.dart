import 'package:aet/controller/dto/TossPayDto.dart';
import 'package:aet/domain/toss/toss_response.dart';
import 'package:aet/domain/toss/toss_provider.dart';
import 'package:aet/domain/toss/toss_repository.dart';
import 'package:aet/util/host.dart';
import 'package:get/get.dart';


class TossController extends GetxController {
  final TossRepository _tossRepository = TossRepository();
  final TossProvider _tossProvider = TossProvider();
  var payType = Rxn<String>();
  var amount = Rxn<num>();
  Rx<TossPayData?> tossPayData = Rx<TossPayData?>(null);
  String? orderId;
  String? orderName;
  Rx<PaymentSuccessResponse?> paymentSuccessResult = Rx<PaymentSuccessResponse?>(null);
  var paymentFailResult = {}.obs; // 결제 실패 결과를 저장


  void setTossPayData(TossPayData data) {
    tossPayData.value = data;
    this.orderId = data.orderId;
    this.orderName = data.orderName;

  }

  Future<bool> tossPayment() async {
    if (payType.value != null && amount.value != null) {
      String paymentMethod;
      switch (payType.value) {
        case "카드":
          paymentMethod = "CARD";
          break;
        case "현금":
          paymentMethod = "CASH";
          break;
        case "포인트":
          paymentMethod = "POINT";
          break;
        default:
          return false;
      }
      TossPayData? paymentData = await _tossRepository.tossPayment(
        payType: paymentMethod,
        amount: amount.value!,
        orderName: "테스트결제",
        yourSuccessUrl: "$host/payments/toss/success",
        yourFailUrl: "$host/payments/toss/fail",
      );
      if (paymentData != null) {
        setTossPayData(paymentData);
        return true;
      }
    }
    return false;
  }

  Future<PaymentSuccessResponse> fetchPaymentSuccess(String paymentKey, String orderId, num amount) async {
    final result = await _tossProvider.tossPaymentSuccess(paymentKey, orderId, amount);
    if (result != null) {
      paymentSuccessResult.value = result;
    }
    return PaymentSuccessResponse(success: true, message: "결제 성공");
  }

  Future<PaymentSuccessResponse> fetchPaymentFail(String code, String message, String orderId) async {
    final result = await _tossProvider.tossPaymentFail(code, message, orderId);
    if (result != null) {
      paymentFailResult.value = result;
    }
    return PaymentSuccessResponse(success: false, message: "결제 성공");
  }
}
