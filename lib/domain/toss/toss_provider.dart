import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';


class TossProvider extends GetConnect {
  final Dio.Dio _dio = Dio.Dio();
  final UserController u = Get.put(UserController());


  Dio.Options get _options {
    return Dio.Options(
      headers: {'Authorization': "Bearer ${u.principal.value.accessToken}"},
    );
  }
  Future<Dio.Response> sendTossPayment(Map requestData) async {
    return await _dio.post("$host/payments/toss", data: requestData, options: _options);
  }

  Future<Dio.Response> tossPaymentSuccess(Map requestData) async {
    return await _dio.get("$host/payments/toss/success", data: requestData, options: _options);
  }

  Future<Dio.Response> tossPaymentFail(Map requestData) async {
    return await _dio.get("$host/payments/toss/fail", data: requestData, options: _options);
  }
}
