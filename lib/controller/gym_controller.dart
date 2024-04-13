import 'package:aet/controller/dto/GymListDto.dart';
import 'package:aet/domain/gym/gym_provider.dart';
import 'package:get/get.dart';


class GymController extends GetxController {
  var gyms = <GymListDto>[].obs;
  final GymProvider _gymProvider = GymProvider(); // GymProvider의 인스턴스 생성

  @override
  void onInit() {
    super.onInit();
    fetchGyms(); // 컨트롤러가 초기화될 때 체육관 목록을 가져옵니다.
  }

  Future<void> fetchGyms() async {
    try {
      final fetchedGyms = await _gymProvider.GymSearchAll(); // GymProvider를 통해 데이터 가져오기
      gyms.value = fetchedGyms; // 가져온 데이터로 gyms 리스트를 업데이트합니다.
    } catch (e) {
      print("Error fetching gyms: $e");
    }
  }
}
