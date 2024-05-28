import 'package:aet/domain/authcode/authcode_repository.dart';
import 'package:get/get.dart';

class AuthCodeController extends GetxController {
  final AuthCodeRepository _authCodeRepository = AuthCodeRepository();
  final Rx<bool> authCodeSend = false.obs;
  final Rx<bool> authCodeCheck = false.obs;

  Future<bool> requestEmailVerificationCode(String memberId) async {
    try {
      authCodeSend.value = true;
      return await _authCodeRepository.requestEmailVerificationCode(memberId);
    } catch (e) {
      authCodeSend.value = false;
      return false;
    }
  }


  Future<bool> verifyEmailCode(String memberId, String code) async {
    try {
      if (await _authCodeRepository.verifyEmailCode(memberId,code) == true) {
        return authCodeCheck.value = true;
      }
      return authCodeCheck.value = false;
    } catch (e) {
      return authCodeCheck.value = false;
    }
  }
}
