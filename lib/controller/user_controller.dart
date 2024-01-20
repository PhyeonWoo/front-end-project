import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:aet/util/jwt.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserController extends GetxController{
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs; // 관찰 가능한 변수
  final principal = User().obs;

  // void logout(){
  //   isLogin.value = false;
  //   jwtToken = null;
  // }
  void logout() async {
    isLogin.value = false;
    refreshToken = null;

    // SharedPreferences에서 토큰 제거
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('accessToken');
    await prefs.remove('refreshToken');
  }

  Future<int> login(String username, String password) async {
    User principal = await _userRepository.login(username, password);

    if (principal.email != null) {
      this.isLogin.value = true;
      this.principal.value = principal;
      return 1;
    } else {
      return -1;
    }
  }
}