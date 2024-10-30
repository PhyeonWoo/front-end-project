import 'package:aet/domain/order/order.dart';
import 'package:aet/domain/order/ticket.dart';
import 'package:aet/domain/order/order_provider.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:intl/intl.dart';

class OrderRepository {
  final OrderProvider _OrderProvider = OrderProvider();

  Future<OrderData?> order({
    required String memberId,
    required String nickName,
    required int ticketPrice,
    required String gymName,
    required int orderCount,
    required int startDay,
    String? startTime = "0000",
    String? endTime = "0000",
  }) async {
    try {
      Dio.Response response = await _OrderProvider.order({
        'memberId': memberId,
        'nickName': nickName,
        'ticketPrice': ticketPrice,
        'gymName': gymName,
        'orderCount': orderCount,
        'startDay': startDay,
        'startTime': startTime,
        'endTime': endTime,
      });
      if (response.statusCode == 200) {
        return OrderData.fromJson(response.data);
      } else {
        throw Exception('Failed to load gyms: ${response.statusCode}');
      }
    } on Dio.DioError catch (e) {
      throw Exception('Failed to load gyms: ${e.message}');
    } catch (e) {
      throw Exception('An error occurred: ${e.toString()}');
    }
  }

  Future<List<TicketData>> fetchTicketData(String memberId) async {
    try {
      Dio.Response response = await _OrderProvider.ticket(memberId);
      if (response.statusCode == 200) {
        List<dynamic> _ticketData = response.data['data'];
        return _ticketData.map<TicketData>((ticketData) {
          String formattedDate = DateFormat('yy/MM/dd').format(DateTime.parse(ticketData['createdAt']));
          ticketData['createdAt'] = formattedDate;
          return TicketData.fromJson(ticketData);
        }).toList();
      } else {
        throw Exception('Failed to load gyms: ${response.statusCode}');
      }
    } on Dio.DioError catch (e) {
      throw Exception('Failed to load gyms: ${e.message}');
    } catch (e) {
      throw Exception('An error occurred: ${e.toString()}');
    }
  }
}