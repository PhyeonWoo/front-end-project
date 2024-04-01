import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';

class PhotoUploadDto {
  final String files;
  final Map<String, dynamic> memberPhotoRequestDto;

  PhotoUploadDto({required this.files, required this.memberPhotoRequestDto});

  Future<FormData> toFormData() async {
    FormData formData = FormData();
    String fileName = files.split('/').last;
    String? mimeType = lookupMimeType(files); // 파일의 MIME 타입을 결정
    MediaType? mediaType;

    if (mimeType != null) {
      List<String> types = mimeType.split('/');
      if (types.length == 2) {
        mediaType = MediaType(types[0], types[1]);
      }
    }

    final file = await MultipartFile.fromFile(
      files,
      filename: fileName, // 파일 이름 지정
      contentType: mediaType, // 동적으로 결정된 ContentType 사용
    );

    formData.fields
        .add(MapEntry("memberPhotoRequestDto", json.encode(memberPhotoRequestDto)));

    formData.files.add(MapEntry("files", file));

    return formData;
  }
}
