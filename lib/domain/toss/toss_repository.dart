import 'package:aet/controller/dto/TossPayDto.dart';
import 'package:aet/domain/toss/toss_provider.dart';
import 'package:get/get.dart';

class TossRepository {
  final TossProvider _tossProvider = TossProvider();

  Future<TossPayData?> tossPayment({
    required String payType,
    required num amount,
    required String orderName,
    required String yourSuccessUrl,
    required String yourFailUrl,
  }) async {
    Response response = await _tossProvider.sendTossPayment(
      payType: payType,
      amount: amount,
      orderName: orderName,
      yourSuccessUrl: yourSuccessUrl,
      yourFailUrl: yourFailUrl,
    );
    if (response.statusCode == 200 && response.body != null) {
      TossPayDto tossPayDto = TossPayDto.fromJson(response.body);
      if (tossPayDto.code == "PA01") {
        return tossPayDto.data;
      }
    }
    return null;
  }
}
