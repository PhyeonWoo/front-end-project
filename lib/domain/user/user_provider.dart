import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;


class UserProvider{
  final Dio.Dio _dio = Dio.Dio();
  Future<Dio.Response> login(Map requestData)async => await _dio.post("$host/auth/login",data: requestData);
  Future<Dio.Response> join(Map requestData)async => await _dio.post("$host/auth/join",data: requestData);
  Future<Dio.Response> fetchUserPoints(memberId) async => await _dio.get('$host/members/login_view/$memberId');
}