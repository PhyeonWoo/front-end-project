import 'package:aet/domain/gym/gym_repository.dart';
import 'package:aet/domain/order/order_repository.dart';
import 'package:aet/domain/order/ticket.dart';
import 'package:get/get.dart';

class TicketController extends GetxController {
  final OrderRepository _ticketRepository = OrderRepository();
  final GymRepository _gymRepository = GymRepository();
  final RxList<TicketData> tickets = <TicketData>[].obs;
  var isLoading = false.obs;

  Future<void> fetchTickets(String memberId) async {
    isLoading(true);
    try {
      List<TicketData> ticketList = await _ticketRepository.fetchTicketData(memberId);
      List<TicketData> updatedTickets = [];

      for (var ticket in ticketList) {
        if (ticket.gymName != null) {
          List<TicketData> gymDetails = await _gymRepository.searchGymByName(ticket.gymName!);
          for (var gymTicket in gymDetails) {
            updatedTickets.add(TicketData(
              orderSeq: ticket.orderSeq,
              gymSeq: ticket.gymSeq,
              dailyTicketSeq: ticket.dailyTicketSeq,
              orderItemSeq: ticket.orderItemSeq,
              gymName: ticket.gymName,
              count: ticket.count,
              reservationTime: ticket.reservationTime,
              dailyTicketUse: ticket.dailyTicketUse,
              createdAt: ticket.createdAt,
              gymSports: gymTicket.gymSports,
              city: gymTicket.city,
              address: gymTicket.address,
            ));
          }
        }
      }
      tickets.value = updatedTickets;
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch tickets: $e');
      print("Error fetching tickets: $e");
    } finally {
      isLoading(false);
    }
  }
}