import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';

class TossPaymentResultDto {
  final String? paymentKey;
  final String orderId;
  final num? amount;
  final Map<String, String>? additionalParams;
  final String? errorCode;
  final String? errorMessage;

  // A constructor that can handle both success and fail scenarios.
  TossPaymentResultDto({
    this.paymentKey,
    required this.orderId,
    this.amount,
    this.additionalParams,
    this.errorCode,
    this.errorMessage,
  });

  // Factory constructor to create a TossPaymentResultDto from a Success object.
  factory TossPaymentResultDto.fromSuccess(Success success) {
    return TossPaymentResultDto(
      paymentKey: success.paymentKey,
      orderId: success.orderId,
      amount: success.amount,
      additionalParams: success.additionalParams,
    );
  }

  // Factory constructor to create a TossPaymentResultDto from a Fail object.
  factory TossPaymentResultDto.fromFail(Fail fail) {
    return TossPaymentResultDto(
      orderId: fail.orderId,
      errorCode: fail.errorCode,
      errorMessage: fail.errorMessage,
    );
  }

  // Method to convert the DTO to JSON, useful for sending data to external systems or for logging.
  Map<String, dynamic> toJson() {
    return {
      'paymentKey': paymentKey,
      'orderId': orderId,
      'amount': amount,
      'additionalParams': additionalParams,
      'errorCode': errorCode,
      'errorMessage': errorMessage,
    };
  }

  @override
  String toString() {
    return 'TossPaymentResultDto(paymentKey: $paymentKey, orderId: $orderId, amount: $amount, additionalParams: $additionalParams, errorCode: $errorCode, errorMessage: $errorMessage)';
  }
}
