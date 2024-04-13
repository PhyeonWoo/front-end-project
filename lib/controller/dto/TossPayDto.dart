class TossPayDto {
  final String code;
  final String description;
  final String dateTime;
  final TossPayData data;

  TossPayDto({
    required this.code,
    required this.description,
    required this.dateTime,
    required this.data,
  });

  factory TossPayDto.fromJson(Map<String, dynamic> json) => TossPayDto(
    code: json['code'],
    description: json['description'],
    dateTime: json['dateTime'],
    data: TossPayData.fromJson(json['data']),
  );

  Map<String, dynamic> toJson() => {
    'code': code,
    'description': description,
    'dateTime': dateTime,
    'data': data.toJson(),
  };
}

class TossPayData {
  final String payType;
  final num amount;
  final String orderName;
  final String orderId;
  final String memberEmail;
  final String memberName;
  final String successUrl;
  final String failUrl;
  final String? failReason;
  final bool cancelYN;
  final String? cancelReason;
  final String createdAt;

  TossPayData({
    required this.payType,
    required this.amount,
    required this.orderName,
    required this.orderId,
    required this.memberEmail,
    required this.memberName,
    required this.successUrl,
    required this.failUrl,
    this.failReason,
    required this.cancelYN,
    this.cancelReason,
    required this.createdAt,
  });

  factory TossPayData.fromJson(Map<String, dynamic> json) => TossPayData(
    payType: json['payType']as String,
    amount: json['amount']as num,
    orderName: json['orderName']as String,
    orderId: json['orderId']as String,
    memberEmail: json['memberEmail']as String,
    memberName: json['memberName']as String,
    successUrl: json['successUrl']as String,
    failUrl: json['failUrl']as String,
    failReason: json['failReason']as String?,
    cancelYN: json['cancelYN']as bool,
    cancelReason: json['cancelReason']as String?,
    createdAt: json['createdAt']as String,
  );

  Map<String, dynamic> toJson() => {
    'payType': payType,
    'amount': amount,
    'orderName': orderName,
    'orderId': orderId,
    'memberEmail': memberEmail,
    'memberName': memberName,
    'successUrl': successUrl,
    'failUrl': failUrl,
    'failReason': failReason,
    'cancelYN': cancelYN,
    'cancelReason': cancelReason,
    'createdAt': createdAt,
  };
}