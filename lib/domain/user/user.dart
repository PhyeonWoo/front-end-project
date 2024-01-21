class User {
  final String? email;
  final String? username;
  final String? nickname;
  final String? accessToken;
  final String? refreshToken;

  User({this.email, this.username, this.nickname, this.accessToken, this.refreshToken});


  User.fromJson(Map<String, dynamic> json)
      : email = json["email"],
        username = json["username"],
        nickname= json['nickname'],
        accessToken= json['accessToken'],
        refreshToken= json['refreshToken'];
}