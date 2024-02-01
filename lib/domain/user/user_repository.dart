import 'package:aet/controller/dto/JoinReqDto.dart';
import 'package:aet/controller/dto/JwtTokenDto.dart';
import 'package:aet/controller/dto/LoginReqDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_provider.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';


class UserRepository {
  final UserProvider _userProvider = UserProvider();
  Dio.Dio dio = Dio.Dio();

  Future<User> login(String memberId, String password) async {
    LoginReqDto loginReqDto = LoginReqDto(memberId, password);
    Response response = await _userProvider.login(loginReqDto.toJson());

    if (response.statusCode == 200) {
      JwtTokenDto jwtTokenDto = JwtTokenDto.fromJson(response.body);
      print("Server Response: ${response.body}");
      print(loginReqDto.memberId);

      if (jwtTokenDto.grantType == "Bearer" &&
          jwtTokenDto.accessToken != null) {
        User principal = User.fromJson(response.body);
        principal = User(memberId: loginReqDto.memberId);
        return principal;
      } else {
        return User();
      }
    } else {
      return User();
    }
  }

  Future<bool> join(String memberId, String password, String nickName) async {
    JoinReqDto joinReqDto = JoinReqDto(memberId, password, nickName);
    Response response = await _userProvider.join(joinReqDto.toJson());
    return response.statusCode == 200;
  }

  Future<User?> fetchUserPoint(String memberId) async {
    Dio.Response response = await _userProvider.fetchUserPoints(memberId);
    if (response.statusCode == 200) {
      final data = response.data['data'];
      User user = User.fromJson(data);
      return user;
    }
    return null;
  }
}