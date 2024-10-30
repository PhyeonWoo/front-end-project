import 'package:aet/AET/components/custom_appbar_search.dart';
import 'package:aet/AET/components/custom_banner.dart';
import 'package:aet/AET/components/custom_container_width_long.dart';
import 'package:aet/AET/components/custom_elevated_button.dart';
import 'package:aet/AET/components/custom_ticket_container.dart';
import 'package:aet/AET/theme/theme_container_profile.dart';
import 'package:aet/controller/bottom_nav_controller.dart';
import 'package:aet/controller/gym_controller.dart';
import 'package:aet/controller/ticket_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeMain extends StatelessWidget {
  final TicketController t = Get.put(TicketController());
  final BottomNavController B = Get.put(BottomNavController());
  final UserController u = Get.put(UserController());
  final GymController g = Get.put(GymController());


  @override
  Widget build(BuildContext context) {
    String formattedNumber = u.principal.value?.point != null
        ? NumberFormat('#,##0', 'en_US').format(u.principal.value!.point)
        : '0';

    double heightSize = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomSheet: Container(
            height: heightSize * 0.18,
            child: CustomBanner()
        ),
        backgroundColor: AppColor.backgroundColors,
        appBar: CustomAppBarSearch(),
        body: RefreshIndicator(
          onRefresh: () async {
            await u.fetchUserPoints(u.Token.value.memberId!);
            await g.isLoading.value;
            await t.fetchTickets(u.principal.value.memberId!);
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      UserMainBox(point: formattedNumber,),
                      CustomContainerWidthLong(text: "종목추천", textSub: "오늘의 종목을 추천"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Obx(() {
                    if (t.isLoading.value) {
                      return Container(child: CircularProgressIndicator());
                    } else if (t.tickets.isNotEmpty) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: t.tickets.where((ticketData) => ticketData.dailyTicketUse!).map((ticketData) => CustomTicket(
                            gymSports: ticketData.gymSports ?? "Ticket",
                            reservationTime: ticketData.reservationTime ?? "",
                            createdAt: ticketData.createdAt ?? "미확인",
                            gymName: ticketData.gymName ?? "운동시설",
                            city: ticketData.city ?? "주소를 확인해주세요",
                            address: ticketData.address ?? " ",
                            dailyTicketUse: ticketData.dailyTicketUse!,
                          )).toList(),
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Center(
                          child: CustomElevatedButton(
                            text: '예약하러가기',
                            funPageRoute: () {
                              B.tabIndex.value = 1;
                            },
                            widthSize: 100,
                            heightSize: heightSize * 0.05,
                          ),
                        ),
                      );
                    }
                  }),
                ),
                SizedBox(height: heightSize * 0.18,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}