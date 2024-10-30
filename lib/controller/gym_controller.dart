
import 'package:aet/domain/gym/gym.dart';
import 'package:aet/domain/gym/gym_repository.dart';
import 'package:get/get.dart';

class GymController extends GetxController {
  final GymRepository _gymRepository = GymRepository();
  final gyms = <Gym>[].obs;
  final isLoading = true.obs;
  final currentPage = 1.obs;
  final itemsPerPage = 10;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> fetchGymList(String memberId) async {
    try {
      isLoading(true);
      List<Gym> gymList = await _gymRepository.fetchGymList(memberId);
      gyms.value = gymList;
    } catch (e) {
      print('Error fetching gym list: $e');
    } finally {
      isLoading(false);
    }
  }

  List<Gym> get paginatedGyms {
    final start = (currentPage.value - 1) * itemsPerPage;
    final end = start + itemsPerPage;
    return gyms.sublist(start, end > gyms.length ? gyms.length : end);
  }

  void nextPage() {
    if ((currentPage.value * itemsPerPage) < gyms.length) {
      currentPage.value++;
    }
  }

  void prevPage() {
    if (currentPage.value > 1) {
      currentPage.value--;
    }
  }
  // void goToDetailPage(Gym gym) {
  //   Get.to(() => SportDetail(gym: gym));
  // }
}
