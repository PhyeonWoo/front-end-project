class UserPointDto {
  final int? code;
  final String? memberId;
  final String? nickName;
  final int? point;

  UserPointDto({this.code,this.memberId, this.nickName,this.point});

  Map<String, dynamic> toJson(){
    return{
      "code": code,
      "memberId": memberId,
      "nickName": nickName,
      "point": point,
    };
  }
}
