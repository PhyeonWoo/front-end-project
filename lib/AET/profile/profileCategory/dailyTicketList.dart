import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/controller/ticket_controller.dart';
import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/util/color.dart';

class DailyTicketList extends StatelessWidget {
  final TicketController t = Get.put(TicketController());

  String limitText(String text, int limit) {
    return text.length > limit ? text.substring(0, limit) + '...' : text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppbar(
          titleWrite: '일일권',
          BackButton: true,
          AppbarColor: AppColor.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(() {
            if (t.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingTextStyle: TextStyle(
                  color: AppColor.darkGrey,
                  fontFamily: "Pretendard",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                columns: const [
                  DataColumn(label: Center(child: Text('번호'))),
                  DataColumn(label: Center(child: Text('운동시설'))),
                  DataColumn(label: Center(child: Text('날짜'))),
                  DataColumn(label: Center(child: Text('장소'))),
                  DataColumn(label: Center(child: Text('사용여부'))),
                ],
                rows: t.tickets.asMap().entries.map((entry) {
                  final i = entry.key;
                  final ticket = entry.value;
                  return DataRow(cells: [
                    DataCell(Center(child: Text((i + 1).toString()))),
                    DataCell(Center(child: Text(limitText(ticket.gymName ?? "N/A", 6)))),
                    DataCell(Center(child: Text(ticket.createdAt ?? "N/A"))),
                    DataCell(Center(child: Text(limitText("${ticket.city} ${ticket.address}", 6)))),
                    DataCell(Center(child: Text(ticket.dailyTicketUse! ? "Yes" : "No"))),
                  ]);
                }).toList(),
              ),
            );
          }),
        ),
      ),
    );
  }
}