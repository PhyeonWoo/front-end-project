class SavePointDto {
  final String? memberId;
  final num? point;

  SavePointDto(this.memberId, this.point);

  Map<String, dynamic> toJson() {
    return {
      "memberId": memberId,
      "point": point,
    };
  }
}
