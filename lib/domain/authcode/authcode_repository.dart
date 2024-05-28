import 'package:aet/domain/authcode/authcode_provider.dart';
import 'package:dio/dio.dart' as Dio;

class AuthCodeRepository {
  final AuthCodeProvider _authCodeProvider = AuthCodeProvider();

  Future<bool> requestEmailVerificationCode(String memberId) async {
    Dio.Response response = await _authCodeProvider.requestEmailVerificationCode(memberId);
    if(response.statusCode ==200){
      return true;
    }
    return false;
  }

  Future<bool?> verifyEmailCode(String memberId, String code) async {
    Dio.Response response = await _authCodeProvider.verifyEmailCode(memberId, code);
    if (response.statusCode == 200) {
      if (response.data.toString() == "회원가입 가능합니다.") {
        return response.statusCode == 200;
      } if(response.data.toString() == "잘못됨"){
        return response.statusCode == 404;
      }else {
        return false;
      }
    }
  }
}

