import 'package:aet/domain/user/user_repository.dart';
import 'package:aet/util/jwt.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs;

  Future<String> login(String username, String password) async{
    String token = await _userRepository.login(username, password);

    if(token != "-1"){
      isLogin.value = true;
      jwtToken = token;
      print("jwtToken: $jwtToken");
    }
    return token;
  }
}