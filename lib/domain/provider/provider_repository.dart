import 'package:aet/controller/dto/ProviderReqDto.dart';
import 'package:aet/domain/provider/provider.dart';
import 'package:aet/domain/provider/provider_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class ProviderRepository {
  final ProviderProvider _providerProvider = ProviderProvider();

  Future<ProviderList> search(String providerName) async {
    ProviderReqDto providerReqDto = ProviderReqDto(providerName);
    print(providerReqDto.toJson());
    Response response = await _providerProvider.ProviderSearch(providerReqDto.toJson());
    dynamic headers = response.headers;
    dynamic body = response.body;
    return ProviderList();
  }
}
