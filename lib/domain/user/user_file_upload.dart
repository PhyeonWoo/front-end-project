import 'package:aet/util/host.dart';
import 'package:dio/dio.dart';
import 'dart:io';

Future<void> uploadImage(File imageFile, String memberId) async {
  Dio dio = Dio();
  String url = "$host/members/file_save";

  // FormData 생성
  FormData formData = FormData.fromMap({
    "files": await MultipartFile.fromFile(imageFile.path),
    "memberId": memberId,
  });

  try {
    Response response = await dio.post(url, data: formData);
    if (response.statusCode == 200) {
      // 성공적으로 업로드 완료
      print("Upload successful");
    } else {
      // 서버 응답 오류 처리
      print("Upload failed: ${response.statusCode}");
    }
  } catch (e) {
    // DioException 처리
    print("Error uploading file: $e");
  }
}
