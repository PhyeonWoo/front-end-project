class User {
  final String? email;
  final String? memberNickname;
  final int? point;
  final String? accessToken;
  final String? refreshToken;

  User({this.email, this.memberNickname, this.point, this.accessToken, this.refreshToken});


  User.fromJson(Map<String, dynamic> json)
      : email = json["email"],
        memberNickname = json['memberNickname'],
        point = json['point'],
        accessToken = json['accessToken'],
        refreshToken = json['refreshToken'];
}