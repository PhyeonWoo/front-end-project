import 'package:aet/controller/dto/TossPayDto.dart';
import 'package:aet/controller/dto/TossPaymentResultDto.dart';
import 'package:aet/domain/toss/toss_repository.dart';
import 'package:aet/util/host.dart';
import 'package:get/get.dart';


class TossController extends GetxController {
  final TossRepository _tossRepository = TossRepository();
  var payType = Rxn<String>();
  var amount = Rxn<int>();
  Rx<TossPayData?> tossPayData = Rx<TossPayData?>(null);
  String? orderId;
  String? orderName;


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
          return false; // Unknown payment type.
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

  Future<TossPaymentResultDto?> tossPaymentSuccess(String paymentKey, String orderId, num amount) async {
    try {
      return await _tossRepository.tossPaymentSuccess(paymentKey, orderId, amount);
    } catch (e) {
      return null; // 실패한 경우 null 반환
    }
  }
}

