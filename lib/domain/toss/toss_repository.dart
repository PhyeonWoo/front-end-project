import 'package:aet/domain/toss/toss_provider.dart';
import 'package:get/get.dart';

class TossRepository {
  final TossProvider _tossProvider = TossProvider();

  Future<bool> tossPayment({
    required String payType,
    required num amount,
    required String orderName,
    required String yourSuccessUrl,
    required String yourFailUrl
  }) async {
    Response response = await _tossProvider.sendTossPayment(
      payType: payType,
      amount: amount,
      orderName: orderName,
      yourSuccessUrl: yourSuccessUrl,
      yourFailUrl: yourFailUrl,
    );
    return response.statusCode == 200;
  }
}
