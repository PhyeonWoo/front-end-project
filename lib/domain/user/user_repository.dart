import 'package:aet/controller/dto/JoinReqDto.dart';
import 'package:aet/controller/dto/JwtTokenDto.dart';
import 'package:aet/controller/dto/LoginReqDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_provider.dart';
import 'package:get/get.dart';


class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<User> login(String memberId, String password) async {
    LoginReqDto loginReqDto = LoginReqDto(memberId, password);
    Response response = await _userProvider.login(loginReqDto.toJson());

    if (response.statusCode == 200) {
      JwtTokenDto jwtTokenDto = JwtTokenDto.fromJson(response.body);
      print("Server Response: ${response.body}");
      print(loginReqDto.memberId);

      if (jwtTokenDto.grantType == "Bearer" && jwtTokenDto.accessToken != null) {
        User principal = User.fromJson(response.body);
        principal = User(email: loginReqDto.memberId);
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
}

