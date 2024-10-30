import 'package:aet/controller/dto/PhotoUploadDto.dart';
import 'package:aet/domain/user/user.dart';
import 'package:aet/util/host.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart'; // Getx의 Response와 충돌을 피하기 위해 Dio에 별칭을 지정

class PhotoUploadController extends GetxController {
  final Dio.Dio _dio = Dio.Dio();
  var uploadStatus = ''.obs;


  Future<User?> pickAndUploadImage(String memberId) async {

    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      final photoUploadDto = PhotoUploadDto(
        files: image.path,
        memberPhotoRequestDto: {"memberId": memberId },
      );
      Dio.FormData formData = await photoUploadDto.toFormData();

      try {
        Dio.Response response = await _dio.post(
          '$host/members/file_save',
          data: formData,
        );
        if (response.statusCode == 200) {
          uploadStatus.value = "업로드 성공";
        } else {
          uploadStatus.value = "업로드 실패: ${response.statusCode}";
        }
      } catch (e) {
        uploadStatus.value = "업로드 중 에러 발생: $e";
      }
    } else {
      uploadStatus.value = "이미지 선택 안됨";
    }
  }
}
