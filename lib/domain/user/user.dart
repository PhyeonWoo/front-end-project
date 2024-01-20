import 'package:intl/intl.dart';

class User{
  final String? email;
  final String? username;
  final String? nickname;
  final dynamic? accessToken;

  User({this.email, this.username,this.nickname, this.accessToken});

  User.fromJson(Map<String, dynamic> json)
      : email = json["email"],
        username = json["username"],
        nickname = json["nickname"],
        accessToken = json["accessToken"];
}