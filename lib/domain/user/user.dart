import 'dart:convert';


class User {
  late final String? memberId;
  late final String? password;
  late final String? nickName;
  late final int? point;
  late final String? accessToken;
  late final String? refreshToken;
  late final DateTime? tokenExpiryDate;
  final List<Map<String, dynamic>> memberPhoto;

  User({
    this.memberId,
    this.password,
    this.nickName,
    this.point,
    this.accessToken,
    this.refreshToken,
    this.tokenExpiryDate,
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
      password: json['memberId'] as String?,
      nickName: json['nickName'] as String?,
      point: json['point'] as int?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      memberPhoto: memberPhotos,
    );
  }
}
