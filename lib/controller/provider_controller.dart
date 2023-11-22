import 'package:aet/domain/provider/provider.dart';
import 'package:aet/domain/provider/provider_repository.dart';
import 'package:get/get.dart';

class ProviderController extends GetxController {
  final ProviderRepository _providerRepository = ProviderRepository();
  final RxBool isSearch = false.obs; // 관찰 가능한 변수
  final principal = ProviderList().obs;

  Future<void> search(String providerName) async {
    ProviderList principal = await _providerRepository.search(providerName);
  }
}
