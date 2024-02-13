class Success {
  final String? paymentKey;
  final String orderId;
  final num? amount;
  final Map<String, dynamic>? additionalParams;

  Success({this.paymentKey, required this.orderId, this.amount, this.additionalParams});

  factory Success.fromJson(Map<String, dynamic> json) {
    return Success(
      paymentKey: json['paymentKey'],
      orderId: json['orderId'],
      amount: json['amount'],
      additionalParams: json['additionalParams'] != null ? Map<String, dynamic>.from(json['additionalParams']) : null,
    );
  }
}
