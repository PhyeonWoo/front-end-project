import 'package:aet/controller/dto/JoinReqDto.dart';
import 'package:aet/controller/dto/JwtTokenDto.dart';
import 'package:aet/controller/dto/LoginReqDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_provider.dart';
import 'package:dio/dio.dart' as Dio;



class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<User> login(String memberId, String password) async{
    LoginReqDto loginReqDto = LoginReqDto(memberId, password);
    Dio.Response response = await _userProvider.login(loginReqDto.toJson());

    if(response.statusCode == 200){
      JwtTokenDto jwtTokenDto = JwtTokenDto.fromJson(response.data);
      if(jwtTokenDto.grantType == "Bearer" && jwtTokenDto.accessToken != null){
        User principal = User(
            memberId: memberId,
            password: password,
            accessToken: jwtTokenDto.accessToken,
            refreshToken: jwtTokenDto.refreshToken,
            memberPhoto: []);
        return principal;
      } else{
        return User(memberPhoto: []);
      }
    } else{
      return User(memberPhoto: []);
    }
  }

  Future<bool> join(String memberId, String password, String nickName) async {
    JoinReqDto joinReqDto = JoinReqDto(memberId, password, nickName);
    Dio.Response response = await _userProvider.join(joinReqDto.toJson());
    return response.statusCode == 200;
  }

  Future<User?> fetchUserPoint(String memberId) async {
    Dio.Response response = await _userProvider.fetchUserPoints(memberId);
    if (response.statusCode == 200) {
      final data = response.data['data'];
      User principal = User.fromJson(data);
      return principal;
    }
    return null;
  }
}