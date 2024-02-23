import 'package:aet/controller/user_controller.dart';
import 'package:aet/domain/toss/toss_response.dart';
import 'package:aet/util/host.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;

class TossProvider extends GetConnect {
  UserController get u => Get.put(UserController());
  Dio.Dio _dio = Dio.Dio();

  Future<Response> sendTossPayment({
    required String payType,
    required num amount,
    required String orderName,
    required String yourSuccessUrl,
    required String yourFailUrl,
  }) async {
    final String url = "$host/payments/toss";
    final Map<String, String> headers = {
      "Authorization": "Bearer ${u.accessToken}",
      "Content-Type": "application/json",
    };
    final response = await post(url, {
      "payType": payType,
      "amount": amount,
      "orderName": orderName,
      "yourSuccessUrl": yourSuccessUrl,
      "yourFailUrl": yourFailUrl,
    }, headers: headers);
    return response;
  }

  Future<PaymentSuccessResponse?> tossPaymentSuccess(String paymentKey, String orderId, num amount) async {
    try {
      final Map<String, String> headers = {
        "Authorization": "Bearer ${u.accessToken}",
        "Content-Type": "application/json",
      };

      final response = await _dio.get(
        '$host/payments/toss/success',
        queryParameters: {
          'paymentKey': paymentKey,
          'orderId': orderId,
          'amount': amount,
        },
        options: Dio.Options(headers: headers),
      );
      return PaymentSuccessResponse.fromJson(response.data);
    } on Dio.DioError catch (e) {
      print(e.toString());
      return null;
    }
  }


  Future<dynamic> tossPaymentFail(String code, String message, String orderId) async {
    try {
      final response = await _dio.get('$host/payments/toss/fail', queryParameters: {
        'code': code,
        'message': message,
        'orderId': orderId,
      });
      return response.data; // Similar to success, handle as needed
    } on Dio.DioError catch (e) {
      // Handle error
      print(e.toString());
      return null;
    }
  }
}
