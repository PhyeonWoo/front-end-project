class TossPayDto {
  final String? payType;
  final num? amount;
  final String? orderName;
  final String? yourSuccessUrl;
  final String? yourFailUrl;

  TossPayDto(this.payType, this.amount, this.orderName, this.yourSuccessUrl, this.yourFailUrl);

  Map<String, dynamic> toJson() {
    return {
      "payType" : payType,
      "amount" : amount,
      "orderName" : orderName,
      "yourSuccessUrl" : yourSuccessUrl,
      "yourFailUrl" : yourFailUrl
    };
  }
}