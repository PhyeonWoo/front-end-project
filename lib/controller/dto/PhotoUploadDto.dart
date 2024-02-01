import 'package:dio/dio.dart';

class PhotoUploadDto {
  String filePath;
  String email;

  PhotoUploadDto({required this.filePath, required this.email});

  FormData toFormData() {
    return FormData.fromMap({
      "files": MultipartFile.fromFileSync(filePath),
      "email": email,
    });
  }
}