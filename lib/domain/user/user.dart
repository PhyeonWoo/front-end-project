class User {
  final String? memberId;
  final String? nickName;
  final int? point;
  final String? accessToken;
  final String? refreshToken;

  User({
    this.memberId,
    this.nickName,
    this.point,
    this.accessToken,
    this.refreshToken,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      memberId: json['memberId'] as String?,
      nickName: json['nickName'] as String?,
      point: json['point'] as int?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );
  }
}
