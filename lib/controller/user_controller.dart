import 'package:aet/controller/dto/PhotoUploadDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/domain/user/user_repository.dart';
import 'package:aet/domain/user/user_service.dart';
import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final UserService _userService = UserService();
  final RxBool isLogin = false.obs; // Observable variable
  final Rx<User> principal = User().obs;
  final Rx<User> fetchedUser = User().obs;

  // 추가: accessToken과 refreshToken 멤버 변수 정의
  String? accessToken;
  String? refreshToken;
  String? nickName;
  int? point;

  void logout() async {
    this.isLogin.value = false;
    this.accessToken = null;
    this.refreshToken = null;
  }

  Future<int> login(String memberId, String password) async {
    try {
      User principal = await _userRepository.login(memberId, password);
      if (principal != null && principal.email != null) {
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
      User? principal = await _userService.fetchUserPoint(memberId);
      if (principal != null) {
        this.principal.value = principal;
        this.nickName = principal.memberNickname;
        this.point = principal.point;
        print(principal);
        return 1;
      } else {
        return -1;
      }
    } catch (e) {
      print("Error fetching user points: $e");
      return -1;
     }
  }
  final ImagePicker _picker = ImagePicker();
  Dio.Dio _dio = Dio.Dio();
  var uploadStatus = ''.obs;

  Future<void> pickAndUploadImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      PhotoUploadDTO dto = PhotoUploadDTO(filePath: image.path, memberId: "사용자ID");
      Dio.FormData formData = dto.toFormData();

      try {
        Dio.Response response = await _dio.post('$host/members/file_save', data: formData);
        if (response.statusCode == 200) {
          uploadStatus.value = "업로드 성공";
        } else {
          uploadStatus.value = "업로드 실패: ${response.statusCode}";
        }
      } catch (e) {
        uploadStatus.value = "업로드 중 에러 발생: $e";
      }
    }
  }
}
