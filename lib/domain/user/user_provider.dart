import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final Dio.Dio _dio = Dio.Dio();
  Future<Dio.Response> login(Map requestData)async => await _dio.post("$host/auth/login",data: requestData);
  Future<Dio.Response> join(Map requestData)async => await _dio.post("$host/auth/join",data: requestData);

  Future<Dio.Response> fetchUserPoints(memberId) async{
    return await _dio.get('$host/members/login_view/$memberId');
  }
}