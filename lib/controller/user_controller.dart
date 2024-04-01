import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:get/get.dart';



class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs; // Observable variable
  final Rx<User> principal = User(memberPhoto: []).obs;
  var uploadStatus = ''.obs;

  // 추가: accessToken과 refreshToken 멤버 변수 정의
  String? accessToken;
  String? refreshToken;

  void logout() async {
    this.isLogin.value = false;
    this.accessToken = null;
    this.refreshToken = null;
  }

  Future<int> login(String memberId, String password) async {
    try {
      User principal = await _userRepository.login(memberId, password);
      if (principal != null && principal.memberId != null) {
        this.isLogin.value = true;
        this.principal.value = principal;
        this.accessToken = principal.accessToken;
        this.refreshToken = principal.refreshToken;
        return 1;
      } else {
        return -1;
      }
    } catch (e) {
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
