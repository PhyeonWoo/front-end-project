import 'package:aet/controller/dto/TossPayDto.dart';
import 'package:aet/controller/dto/TossPaymentResultDto.dart';
import 'package:aet/domain/toss/toss_provider.dart';
import 'package:aet/domain/toss/toss_success.dart';
import 'package:get/get.dart';
import 'dart:convert'; // json.decode를 사용하기 위해 필요

class TossRepository {
  final TossProvider _tossProvider = TossProvider();

  Future<TossPayData?> tossPayment({
    required String payType,
    required num amount,
    required String orderName,
    required String yourSuccessUrl,
    required String yourFailUrl,
  }) async {
    Response response = await _tossProvider.sendTossPayment(
      payType: payType,
      amount: amount,
      orderName: orderName,
      yourSuccessUrl: yourSuccessUrl,
      yourFailUrl: yourFailUrl,
    );
    if (response.statusCode == 200 && response.body != null) {
      TossPayDto tossPayDto = TossPayDto.fromJson(response.body);
      if (tossPayDto.code == "PA01") {
        return tossPayDto.data;
      }
    }
    return null;
  }

  Future<TossPaymentResultDto?> tossPaymentSuccess(String paymentKey, String orderId, num amount) async {
    Response response = await _tossProvider.tossPaymentSuccess(
        paymentKey: paymentKey,
        orderId: orderId,
        amount: amount);
    if (response.statusCode == 200 && response.body != null) {
      // JSON 문자열을 Map<String, dynamic>으로 변환
      final Map<String, dynamic> decodedBody = json.decode(response.body);

      // Success 객체를 사용하여 TossPaymentResultDto 객체를 생성합니다.
      TossPaymentResultDto tossPay = TossPaymentResultDto.fromSuccess(response.body);
      return tossPay;
    } else {
      return null; // 실패한 경우 null 반환
    }
  }
}
