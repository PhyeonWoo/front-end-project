import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';

class UserProvider extends GetConnect {
  final Dio.Dio _dio = Dio.Dio();
  Future<Response> login(Map requestData) => post("$host/auth/login", requestData);
  Future<Response> join(Map requestData) => post("$host/auth/join", requestData);

  Future<Dio.Response> fetchUserPoints(memberId) async{
    return await _dio.get('$host/members/login_view/$memberId');
  }
  Future<Dio.Response> uploadImage(Dio.FormData formData) async {
    return await _dio.post('$host/members/file_save', data: formData);
  }
}