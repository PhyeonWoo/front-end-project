import 'package:aet/domain/toss/toss_repository.dart';
import 'package:aet/util/host.dart';
import 'package:get/get.dart';


class TossController extends GetxController {
  final TossRepository _tossRepository = TossRepository();
  var payType = Rxn<String>();
  var amount = Rxn<int>();

  Future<bool> tossPayment() async {
    if (payType.value != null) {
      return await _tossRepository.tossPayment(
        payType: payType.value!,
        amount: amount.value!,
        orderName: "테스트결제",
        yourSuccessUrl: "$host/payments/toss/success",
        yourFailUrl: "$host/payments/toss/fail",
      );
    }else {
      return false;
    }
  }
}
