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
    this.orderId = data.orderId;
    this.orderName = data.orderName;
  }

  Future<bool> tossPayment() async {
    if (payType.value != null && amount.value != null) {
      String paymentMethod = "DEFAULT"; // Added default case
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
        orderName: orderName ?? "테스트결제",
        successUrl: "$host/payments/toss/success",
        failUrl: "$host/payments/toss/fail",
      );
      if (paymentData != null) {
        setTossPayData(paymentData);
        return true;
      }
    }
    return false;
  }

  Future<PaymentSuccessResponse> fetchPaymentSuccess(String paymentKey, String orderId, num amount) async {
    final PaymentSuccessResponse? result = await _tossRepository.tossPaymentSuccess(paymentKey, orderId, amount);
    paymentSuccessResult.value = result;
    return result ?? PaymentSuccessResponse(success: false, message: "결제 실패"); // Handle null response
  }

  Future<PaymentSuccessResponse> fetchPaymentFail(String orderId, String errorCode, String errorMessage) async {
    final PaymentSuccessResponse? result = await _tossRepository.tossPaymentFail(orderId, errorCode, errorMessage);
    paymentSuccessResult.value = result;
    return result ?? PaymentSuccessResponse(success: false, message: "결제 실패"); // Correct message
  }
}
