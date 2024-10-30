import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs;
  final Rx<User> principal = User(memberPhoto: []).obs;
  final Rx<User> Token = User(memberPhoto: []).obs;
  var uploadStatus = ''.obs;

  void logout() {
    this.isLogin.value = false;
    this.Token.value.accessToken = null;
    this.Token.value.refreshToken = null;
    this.Token.value.tokenExpiryDate = null;
  }

  Future<User?> login(String memberId, String password) async {
    User principal = await _userRepository.login(memberId, password);

    if (principal.accessToken != null && principal.memberId != null) {
      isLogin.value = true;
      this.Token.value = principal;
      return principal;
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
      User? fetchUse = await _userRepository.fetchUserPoint(memberId);
      if (fetchUse != null) {
        this.principal.value = fetchUse;
        return 1;
      } else {
        return -1;
      }
    } catch (e) {
      print("Error fetching user points: $e");
      return -1;
     }
  }
  Future<bool> savePoints(String memberId, num point) async {
    try {
      return await _userRepository.savePoints(memberId, point);
    } catch (e) {
      return false;
    }
  }
}

