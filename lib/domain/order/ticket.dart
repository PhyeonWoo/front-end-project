class TicketData {
  final int? orderSeq;
  final int? gymSeq;
  final int? dailyTicketSeq;
  final int? orderItemSeq;
  final String? gymName;
  final int? count;
  final String? reservationTime;
  final bool? dailyTicketUse;
  final String? createdAt;
  final String? gymSports;
  final String? city;
  final String? address;

  TicketData({
    this.orderSeq,
    this.gymSeq,
    this.dailyTicketSeq,
    this.orderItemSeq,
    this.gymName,
    this.count,
    this.reservationTime,
    this.dailyTicketUse,
    this.createdAt,
    this.gymSports,
    this.city,
    this.address,
  });

  factory TicketData.fromJson(Map<String, dynamic> json) => TicketData(
    orderSeq: json['orderSeq'],
    gymSeq: json['gymSeq'],
    dailyTicketSeq: json['dailyTicketSeq'],
    orderItemSeq: json['orderItemSeq'],
    gymName: json['gymName'],
    count: json['count'],
    reservationTime: json['reservationTime'],
    dailyTicketUse: json['dailyTicketUse'],
    createdAt: json['createdAt'],
    gymSports: json['gymSports'],
    city: json['gymAddress']?['city'],
    address: json['gymAddress']?['street'],
  );

  Map<String, dynamic> toJson() => {
    'orderSeq': orderSeq,
    'gymSeq': gymSeq,
    'dailyTicketSeq': dailyTicketSeq,
    'orderItemSeq': orderItemSeq,
    'gymName': gymName,
    'count': count,
    'reservationTime': reservationTime,
    'dailyTicketUse': dailyTicketUse,
    'createdAt': createdAt,
    'gymSports': gymSports,
    'city': city,
    'address': address,
  };
}