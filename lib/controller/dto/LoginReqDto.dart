
class LoginReqDto{
  final String? memberId;
  final String? password;

  LoginReqDto(this.memberId, this.password);
  Map<String, dynamic> toJson()=>{
    "memberId": memberId,
    "password": password,
  };
}