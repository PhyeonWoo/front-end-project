class JwtTokenDto {
  final String? grantType;
  final String? accessToken;
  final String? refreshToken;

  JwtTokenDto({this.grantType, this.accessToken, this.refreshToken});

  factory JwtTokenDto.fromJson(Map<String, dynamic> json) {
    return JwtTokenDto(
      grantType: json['grantType'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "grantType": grantType,
      "accessToken": accessToken,
      "refreshToken": refreshToken,
    };
  }
}
