class PaymentSuccessResponse {
  final bool success;
  final String message;

  PaymentSuccessResponse({required this.success, required this.message});

  factory PaymentSuccessResponse.fromJson(Map<String, dynamic> json) {
    return PaymentSuccessResponse(
      success: json['success'] ?? false, // null일 경우 false를 기본값으로 사용
      message: json['message'] ?? '', // message도 마찬가지로 null 체크를 할 수 있습니다.
    );
  }
}

