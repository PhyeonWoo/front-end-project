import 'package:aet/util/host.dart';
import 'package:dio/dio.dart'as Dio;

class AuthCodeProvider{
  final Dio.Dio _dio = Dio.Dio();
  Future<Dio.Response> requestEmailVerificationCode(memberId) async => await _dio.get('$host/email/$memberId/authcode');
  Future<Dio.Response> verifyEmailCode(memberId, code) async => await _dio.post('$host/email/$memberId/authcode', data: {'code': code});


}
