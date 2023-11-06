import 'package:aet/controller/dto/LoginReqDto.dart';
import 'package:aet/domain/user/user_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<String> login(String username, String password) async {
    LoginReqDto loginReqDto = LoginReqDto(username, password);
    Response response = await _userProvider.login(loginReqDto.toJson());
    print(loginReqDto.toJson());
    print(response.body);
    print(response.headers);
    dynamic headers = response.headers;

    if (headers["authorization"] == null) {
      return "-1";
    } else {
      String token = headers["authorization"];
      return token;
    }
  }
}