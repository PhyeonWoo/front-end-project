import 'package:aet/AET/components/custom_sport_circle.dart';
import 'package:aet/AET/profile/profileCategory/dailyTicketList.dart';
import 'package:flutter/material.dart';

class CustomSportCategoryList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SportsCircle(textWrite: "테니스",togo: DailyTicketList(),imagePath: "assets/images/tennis.png",),
          SportsCircle(textWrite: "헬스",togo: DailyTicketList(),imagePath: "assets/images/health.png",),
          SportsCircle(textWrite: "복싱",togo: DailyTicketList(),imagePath: "assets/images/boxing.png",),
          SportsCircle(textWrite: "크로스핏",togo: DailyTicketList(),imagePath: "assets/images/crossfit.png",),
          SportsCircle(textWrite: "요가",togo: DailyTicketList(),imagePath: "assets/images/yoga.png",),
          SportsCircle(textWrite: "클라이밍",togo: DailyTicketList(),imagePath: "assets/images/climbing.png",),
        ]
      ),
    );
  }
}
