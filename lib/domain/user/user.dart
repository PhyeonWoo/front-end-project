class User {
  final String? memberId;
  final String? memberNickname;
  final int? point;
  final String? accessToken;
  final String? refreshToken;

  User({
    this.memberId,
    this.memberNickname,
    this.point,
    this.accessToken,
    this.refreshToken,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      memberId: json['memberId'] as String?,
      memberNickname: json['memberNickname'] as String?,
      point: json['point'] as int?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );
  }
}
