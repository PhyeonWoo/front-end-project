class LoginReqDto {
  final String? memberId;
  final String? password;

  LoginReqDto(this.memberId, this.password);

  Map<String, dynamic> toJson() {
    return {
      "memberId": memberId,
      "password": password,
    };
  }
}
