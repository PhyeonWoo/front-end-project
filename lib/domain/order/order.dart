class OrderData {
  final String? memberId;
  final String? nickname;
  final int? ticketPrice;
  final String? gymName;
  final int? orderCount;
  final int? startDay;
  final String? startTime;
  final String? endTime;

  OrderData({
  this.memberId,
  this.nickname,
  this.ticketPrice,
  this.gymName,
  this.orderCount,
  this.startDay,
  this.startTime,
  this.endTime,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData(
      memberId: json['memberId'],
      nickname: json['nickname'],
      ticketPrice: json['ticketPrice'],
      gymName: json['gymName'],
      orderCount: json['orderCount'],
      startDay: json['startDay'],
      startTime: json['startTime'],
      endTime: json['endTime']
    );

  Map<String, dynamic> toJson() => {
    'memberId' : memberId,
    'nickname' : nickname,
    'ticketPrice' : ticketPrice,
    'gymName' : gymName,
    'orderCount' : orderCount,
    'startDay' : startDay,
    'startTime' : startTime,
    'endTime' : endTime,
  };
}
