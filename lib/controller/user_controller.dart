import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs;
  final Rx<User> principal = User(memberPhoto: []).obs;
  var uploadStatus = ''.obs;

  void logout() async {
    this.isLogin.value = false;
    this.principal.value.accessToken = null;
    this.principal.value.refreshToken = null;
    this.principal.value.tokenExpiryDate = null;
  }

  Future<int> login(String memberId, String password) async {
    User principal = await _userRepository.login(memberId, password);
    if (principal.accessToken != null && principal.memberId != null) {
      this.isLogin.value = true;
      this.principal.value = principal;
      print(this.principal.value);
      return 1;
    } else {
      return -1;
    }
  }

  Future<bool> join(String memberId, String password, String nickName) async {
    try {
      return await _userRepository.join(memberId, password, nickName);
    } catch (e) {
      return false;
    }
  }

  Future<int> fetchUserPoints(String memberId) async {
    try {
      User? principal = await _userRepository.fetchUserPoint(memberId);
      if (principal != null) {
        this.principal.value = principal;
        return 1;
      } else {
        return -1;
      }
    } catch (e) {
      print("Error fetching user points: $e");
      return -1;
     }
  }
}
