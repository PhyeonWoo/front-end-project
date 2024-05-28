import 'package:dio/dio.dart';
import 'package:aet/controller/dto/TossPayDto.dart';
import 'package:aet/domain/toss/toss_provider.dart';
import 'package:aet/domain/toss/toss_response.dart';


class TossRepository {
  final TossProvider _tossProvider = TossProvider();

  Future<TossPayData?> tossPayment({
    required String payType,
    required num amount,
    required String orderName,
    String? orderId,
    String? memberEmail,
    String? memberName,
    required String successUrl,
    required String failUrl,
    String? failReason,
    bool? cancelYN,
    String? cancelReason,
    String? createdAt,
  }) async {
    try {
      final tossPayData = TossPayData(
        payType: payType,
        amount: amount,
        orderName: orderName,
        successUrl: successUrl,
        failUrl: failUrl,
        orderId: orderId ?? "",
        memberEmail: memberEmail ?? "",
        memberName: memberName ?? "",
        cancelYN: cancelYN ?? false,
        createdAt: createdAt ?? "",
      );
      final Response response = await _tossProvider.sendTossPayment(tossPayData.toJson());
      if (response.statusCode == 200 && response.data != null) {
        final TossPayDto tossPayDto = TossPayDto.fromJson(response.data);
        if (tossPayDto.code == "PA01") {
          return tossPayDto.data;
        }
      }
      return null;
    } catch (e) {
      print('Toss 결제 처리 오류: $e');
      return null;
    }
  }

  Future<PaymentSuccessResponse?> tossPaymentSuccess(String paymentKey, String orderId, num amount) async {
    try {
      final Response response = await _tossProvider.tossPaymentSuccess({
        'paymentKey': paymentKey,
        'orderId': orderId,
        'amount': amount
      });
      if (response.statusCode == 200) {
        return PaymentSuccessResponse.fromJson(response.data);
      }
      return null;
    } on DioError catch (e) {
      print('Toss 결제 성공 확인 오류: ${e.toString()}');
      return null;
    }
  }

  Future<dynamic> tossPaymentFail(String code, String message, String orderId) async {
    try {
      final Response response = await _tossProvider.tossPaymentFail({
        'code': code,
        'message': message,
        'orderId': orderId,
      });
      return response.data;
    } on DioError catch (e) {
      print('Toss 결제 실패 처리 오류: ${e.toString()}');
      return null;
    }
  }
}
