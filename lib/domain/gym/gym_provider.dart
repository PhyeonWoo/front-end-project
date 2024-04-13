import 'package:aet/controller/dto/GymListDto.dart';
import 'package:aet/util/host.dart';
import 'package:dio/dio.dart'as Dio;

class GymProvider{
  Dio.Dio _dio = Dio.Dio();

  Future<List<GymListDto>> GymSearchAll() async{
    final response = await _dio.get('$host/gyms/all');
    
    if(response.statusCode == 200){
      List<dynamic> body = response.data["data"];
      return body.map((dynamic item) => GymListDto.fromJson(item)).toList();
    } else {
      throw Exception("Failed to load gyms");
    }
  }
}