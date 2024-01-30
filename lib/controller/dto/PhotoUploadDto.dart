import 'package:dio/dio.dart';

class PhotoUploadDTO {
  String filePath;
  String memberId;

  PhotoUploadDTO({required this.filePath, required this.memberId});

  FormData toFormData() {
    return FormData.fromMap({
      "files": MultipartFile.fromFileSync(filePath),
      "memberId": memberId,
    });
  }
}
