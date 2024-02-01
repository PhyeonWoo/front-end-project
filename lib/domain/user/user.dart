class User {
  final String? memberId;
  final String? memberNickname;
  final int? point;
  final String? accessToken;
  final String? refreshToken;

  User({this.memberId, this.memberNickname, this.point, this.accessToken, this.refreshToken});


  User.fromJson(Map<String, dynamic> json)
      : memberId = json["memberId"],
        memberNickname = json['memberNickname'],
        point = json['point'],
        accessToken = json['accessToken'],
        refreshToken = json['refreshToken'];
}