class JwtTokenDto {
  final String? grantType;
  final String? accessToken;
  final String? refreshToken;

  JwtTokenDto(this.grantType, this.accessToken, this.refreshToken);

  factory JwtTokenDto.fromJson(Map<String, dynamic> json) {
    return JwtTokenDto(
      json['grantType'] as String?,
      json['accessToken'] as String?,
      json['refreshToken'] as String?,
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
