import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:aet/util/jwt.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs; // 관찰 가능한 변수
  final principal = User().obs;

  void logout(){
    isLogin.value = false;
    jwtToken = null;
  }


  Future<int> login(String username, String password) async {
    User principal = await _userRepository.login(username, password);

    if (principal.id != null) {
      this.isLogin.value = true;
      this.principal.value = principal;
      return 1;
    } else {
      return -1;
    }
  }
}