import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';


class OrderProvider{
  final Dio.Dio _dio = Dio.Dio();
  final UserController u = Get.put(UserController());

  Future<Dio.Response> order(Map requestData)async => await _dio.post("$host/order",data: requestData);
  Future<Dio.Response> ticket(memberId)async => await _dio.get("$host/order/memberId/${u.principal.value.memberId}",queryParameters: {'memberId': memberId});

}