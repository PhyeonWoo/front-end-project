import 'dart:convert';

class User {
  final String? memberId;
  final String? nickName;
  final int? point;
  final String? accessToken;
  final String? refreshToken;
  final List<Map<String, dynamic>> memberPhoto;

  User({
    this.memberId,
    this.nickName,
    this.point,
    this.accessToken,
    this.refreshToken,
    required this.memberPhoto,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    var memberPhotoList = json['memberPhoto'] as List<dynamic>?;
    List<Map<String, dynamic>> memberPhotos = [];

    if (memberPhotoList != null) {
      memberPhotos = memberPhotoList.map((photoItem) {
        Map<String, dynamic> photoMap = photoItem as Map<String, dynamic>;
        if (photoMap.containsKey('imageBytes')) {
          photoMap['imageBytes'] = base64Decode(photoMap['imageBytes']);
        }
        return photoMap;
      }).toList();
    }

    return User(
      memberId: json['memberId'] as String?,
      nickName: json['nickName'] as String?,
      point: json['point'] as int?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      memberPhoto: memberPhotos,
    );
  }

  List<Map<String, dynamic>> decodeMemberPhoto() {
    return memberPhoto.map((photo) {
      if (photo.containsKey('imageBytes')) {
        var decodedBytes = base64Decode(photo['imageBytes']);
        return {
          ...photo,
          'imageBytes': decodedBytes,
        };
      }
      return photo;
    }).toList();
  }
}
