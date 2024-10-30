import 'package:aet/util/host.dart';
import 'package:dio/dio.dart'as Dio;


class GymProvider{
  final Dio.Dio _dio = Dio.Dio();

  Future<Dio.Response> fetchGymList(memberId) async => await _dio.get('$host/gyms/all', queryParameters: {'memberId': memberId});
  Future<Dio.Response> searchGymByName(gymName) async => await _dio.get('$host/gyms/search/gym_name',queryParameters: {
  'keyword': gymName});
}
