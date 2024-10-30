import 'package:aet/domain/order/order.dart';
import 'package:aet/domain/order/order_repository.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  final OrderRepository _orderRepository = OrderRepository();
  final Rx<OrderData?> ticketDetail = Rx<OrderData?>(null);

  Future<bool> order(
      String memberId,
      String nickName,
      int ticketPrice,
      String gymName,
      int orderCount,
      int startDay,
      String? startTime,
      String? endTime,
      ) async {
    OrderData? dailyTicket = await _orderRepository.order(
      memberId: memberId,
      nickName: nickName,
      ticketPrice: ticketPrice,
      gymName: gymName,
      orderCount: orderCount,
      startDay: startDay,
      startTime: startTime,
      endTime: endTime,
    );
    if (dailyTicket != null) {
      ticketDetail.value = dailyTicket;
      return true;
    }
    return false;
  }
}