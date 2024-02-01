// import 'package:aet/controller/dto/PhotoUploadDto.dart';
// import 'package:aet/controller/user_controller.dart';
// import 'package:aet/util/host.dart';
// import 'package:dio/dio.dart' as dio;
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart'; // Getx의 Response와 충돌을 피하기 위해 Dio에 별칭을 지정
//
// class PhotoUploadController extends GetxController {
//   final dio.Dio _dio = dio.Dio();
//   var uploadStatus = ''.obs;
//
//
//   Future<void> pickAndUploadImage() async {
//     UserController u = UserController();
//     final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (image != null) {
//       PhotoUploadDTO dto = PhotoUploadDTO(filePath: image.path, email: "email" );
//       dio.FormData formData = dto.toFormData();
//
//       try {
//         dio.Response response = await _dio.post('$host/members/file_save', data: formData);
//         if (response.statusCode == 200) {
//           uploadStatus.value = "업로드 성공";
//         } else {
//           uploadStatus.value = "업로드 실패: ${response.statusCode}";
//         }
//       } catch (e) {
//         uploadStatus.value = "업로드 중 에러 발생: $e";
//       }
//     }
//   }
// }
