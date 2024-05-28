import 'package:aet/domain/gym/gym_provider.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:aet/domain/gym/gym.dart';

class GymRepository {
  final GymProvider _gymProvider = GymProvider();

  Future<List<Gym>> fetchGymList(String memberId) async {
    try {
      Dio.Response response = await _gymProvider.fetchGymList(memberId);
      if (response.statusCode == 200) {
        List<dynamic> gymsData = response.data['data'];
        return gymsData.map<Gym>((gymData) => Gym.fromJson(gymData)).toList();
      } else {
        throw Exception('Failed to load gyms: ${response.statusCode}');
      }
    } on Dio.DioError catch (e) {
      throw Exception('Failed to load gyms: ${e.message}');
    } catch (e) {
      throw Exception('An error occurred: ${e.toString()}');
    }
  }
}
