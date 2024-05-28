import 'package:aet/AET/components/custom_appbar_search.dart';
import 'package:aet/AET/components/custom_banner.dart';
import 'package:aet/AET/components/custom_container_width_long.dart';
import 'package:aet/AET/components/custom_ticket_container.dart';
import 'package:aet/AET/theme/theme_container_profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomeMain());

class HomeMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBarSearch(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserMainBox(),
                CustomContainerWidthLong(text: "종목추천",textSub: "오늘의 종목을 추천"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTicket(),
                    CustomTicket(),
                    CustomTicket(),
                  ],
                ),
                Container(
                    height: 140,
                    child: CustomBanner()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
