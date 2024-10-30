import 'dart:convert';
import 'dart:typed_data';
import 'package:aet/AET/components/custom_bottomsheet.dart';
import 'package:aet/AET/screens/sportsDetail/sportsCheckIn.dart';
import 'package:aet/AET/screens/sportsDetail/sportsTicket.dart';
import 'package:aet/controller/checkbox_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportDetail extends StatelessWidget {
  final String name;
  final String sports;
  final int ticketPrice;
  final String city;
  final String street;
  final String zipCode;
  final String gymNumber;
  final String managerNumber;
  final String imageBytes;
  final String introduction;


  SportDetail({
    required this.name,
    required this.sports,
    required this.ticketPrice,
    required this.city,
    required this.street,
    required this.zipCode,
    required this.gymNumber,
    required this.managerNumber,
    required this.imageBytes,
    required this.introduction,
  });

  @override
  Widget build(BuildContext context) {

    double heightSize = MediaQuery.of(context).size.height;
    double widthSize = MediaQuery.of(context).size.width;
    final CheckboxController c = Get.put(CheckboxController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        bottomSheet: CustomBottomSheet(title: "이용권 구매하기",funPageRoute:()async{
          c.toggleAllChecked(false);
          Get.to(SportsCheckIn(photo: _buildBackgroundImage(
              heightSize,widthSize), name: name, sports: sports, ticketPrice: ticketPrice,));},
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: heightSize * 0.05 + 10,
              expandedHeight: heightSize * 0.25,
              pinned: true,
              backgroundColor: Colors.white,
              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  var top = constraints.biggest.height;
                  return FlexibleSpaceBar(
                    titlePadding: EdgeInsets.all(0),
                    title: top < 120 ? _buildAppbar(top, name) : null,
                    background: _buildBackgroundImage(heightSize, widthSize),
                  );
                },
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: "Pretendard",
                                    color: AppColor.darkGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              _buildTag(sports)
                            ],
                          ),
                          Text(
                            city + " " + street,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Pretendard",
                                color: AppColor.darkGrey,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "일일권 ",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    color: AppColor.darkGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${ticketPrice}원",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Pretendard",
                                    color: AppColor.darkGrey,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          ),
                          Divider(
                            color: AppColor.lightWhite,
                          ),
                          Text(
                           introduction,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Pretendard",
                                color: AppColor.darkGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          Divider(
                            color: AppColor.lightWhite,
                          ),
                          Text(
                            "일일권",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Pretendard",
                                color: AppColor.darkGrey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SportsTicket(
                            onPressed: () async{
                              c.toggleAllChecked(false);
                              Get.to(SportsCheckIn(photo: _buildBackgroundImage(
                                  heightSize,widthSize), name: name, sports: sports, ticketPrice: ticketPrice,));
                            },
                            photo: _buildBackgroundImage(
                                heightSize * 0.12, widthSize * 0.23),
                            title: '${sports} 1회 이용권',
                            description: '${name}1회 이용권입니다.',
                            price: ticketPrice,
                            tag: sports,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: AppColor.lightWhite,
                          ),
                          Text(
                            "이용후기 준비중입니다.",
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Pretendard",
                                color: AppColor.darkGrey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
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

  Widget _buildBackgroundImage(double heightSize, double widthSize) {
    if (imageBytes.isNotEmpty) {
      Uint8List decodedBytes = base64Decode(imageBytes);
      return Container(
        height: heightSize,
        width: widthSize,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: MemoryImage(decodedBytes),
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      return Container(
        height: heightSize,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/non.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }

  Widget _buildTag(String sports) => Container(
        decoration: BoxDecoration(
          color: AppColor.green,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: AppColor.Shadow,
              blurRadius: 10,
              offset: Offset(0,0),
            )
          ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
        child: Text(sports,
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500)),
      );

  Widget _buildAppbar(double heightSize, String titleWrite) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 45.0),
        child: Stack(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: AppColor.darkGrey),
              onPressed: () => Get.back(),
            ),
            Center(
              child: Text(
                titleWrite,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.darkGrey,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
