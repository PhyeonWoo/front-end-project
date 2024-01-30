import 'package:aet/controller/dto/PhotoUploadDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/util/host.dart';
import 'package:dio/dio.dart'as Dio;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserService {
  Dio.Dio dio = Dio.Dio();

  Future<User?> fetchUserPoint(String memberId) async {
    try {
      final response = await dio.get('$host/members/point_find/$memberId');
      if (response.statusCode == 200) {
        final data = response.data['data'];
        User user = User.fromJson(data);
        return user;
      }
    } catch (e) {
      print('Error fetching user points: $e');
    }
    return null;
  }

}
