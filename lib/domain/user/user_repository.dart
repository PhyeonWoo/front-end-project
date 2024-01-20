import 'package:aet/controller/dto/CMRespDto.dart';
import 'package:aet/controller/dto/LoginReqDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_provider.dart';

import 'package:aet/util/jwt.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<User> login(String username, String password) async {
    LoginReqDto loginReqDto = LoginReqDto(username, password);
    print(loginReqDto.toJson());
    Response response = await _userProvider.login(loginReqDto.toJson());

    dynamic body = response.body;
    CMRespDto cmRespDto = CMRespDto.fromJson(body);

    print(cmRespDto.accessToken);
    print(refreshToken);
    print(accessToken);

    if (cmRespDto.grantType == "Bearer" &&cmRespDto.accessToken != null) {
      User principal = User.fromJson(cmRespDto.accessToken as Map<String, dynamic>);
      accessToken = cmRespDto.accessToken;
      String token = body["accessToken"];
      print("jwtToken : $token");
      return principal;
    } else {
      return User();
    }

    // dynamic headers = response.headers;
    // if (headers["authorization"]==null) {
    //   return "-1";
    // } else {
    //   String token = headers["authorization"];
    //   return token;
    // }
  }
}
