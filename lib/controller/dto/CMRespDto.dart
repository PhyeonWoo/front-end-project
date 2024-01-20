
class CMRespDto {
  final String? grantType;
  final String? accessToken;
  final String? refreshToken;

  CMRespDto({
    this.grantType,
    this.accessToken,
    this.refreshToken,
  });

  CMRespDto.fromJson(Map<String, dynamic> json)
      : grantType = json["grantType"],
        accessToken = json["accessToken"],
        refreshToken = json["refreshToken"];
  }