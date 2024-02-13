import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/host.dart';
import 'package:get/get.dart';


class TossProvider extends GetConnect {
  UserController get u => Get.put(UserController());

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

  Future<Response> tossPaymentSuccess({
    required String paymentKey,
    required String orderId,
    required num amount,
  }) async {
    final String url = "$host/payments/toss/success";
    final response = await get(
      url,
      query: {
        'paymentKey': paymentKey,
        'orderId': orderId,
        'amount': amount,
      },
    );
    return response;
  }
}
