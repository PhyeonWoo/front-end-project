import 'package:aet/controller/ticket_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTicket extends StatelessWidget {
  final String gymSports;
  final String reservationTime;
  final String createdAt;
  final String gymName;
  final String city;
  final String address;
  final bool dailyTicketUse;

  CustomTicket({
    required this.gymSports,
    required this.reservationTime,
    required this.createdAt,
    required this.gymName,
    required this.city,
    required this.address,
    required this.dailyTicketUse,
  });

  final TicketController t = Get.put(TicketController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,5,10,0),
      child: Container(
        width: screenWidth*0.26,
        height: screenHeight*0.19,
        decoration: BoxDecoration(
          color: AppColor.green,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0,5,0,0),
              child: Text(
                gymSports,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Pretendard",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: screenWidth*0.26,
              height: screenHeight*0.15,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,2,0,1),
                    child: Text(
                      dailyTicketUse ? "이용가능" : "이용완료",
                      style: TextStyle(
                        color: AppColor.darkGrey,
                        fontFamily: "Pretendard",
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,2,0,0),
                    child: Text(
                      reservationTime == "0" ? "일일권" : reservationTime,
                      style: TextStyle(
                        color: AppColor.darkGrey,
                        fontFamily: "Pretendard",
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,1,0,2),
                    child: Text(
                      createdAt,
                      style: TextStyle(
                        color: AppColor.darkGrey,
                        fontFamily: "Pretendard",
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(1,1,1,0),
                    child: Text(
                      gymName,
                      style: TextStyle(
                        color: AppColor.darkGrey,
                        fontFamily: "Pretendard",
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,0,0,15),
                      child: Text(
                        "${city} ${address}",
                        style: TextStyle(
                          color: AppColor.darkGrey,
                          fontFamily: "Pretendard",
                          fontSize: 6,
                          fontWeight: FontWeight.w300,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
