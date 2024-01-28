class JoinReqDto {
  final String? memberId;
  final String? password;
  final String? nickName;

  JoinReqDto(this.memberId, this.password, this.nickName);

  Map<String, dynamic> toJson() {
    return {
      "memberId": memberId,
      "password": password,
      "nickName": nickName,
    };
  }
}
