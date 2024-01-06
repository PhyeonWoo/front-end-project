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
    dynamic headers = response.headers;
    dynamic body = response.body;
    CMRespDto cmRespDto = CMRespDto.fromJson(body);

    print(cmRespDto.data);
    print(jwtToken);

    if (cmRespDto.code == 1) {
      User principal = User.fromJson(cmRespDto.data);

      String token = headers["authorization"];

      jwtToken = token;
      print("jwtToken : $jwtToken");

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
