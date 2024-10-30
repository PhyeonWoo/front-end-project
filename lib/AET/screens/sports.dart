import 'package:aet/AET/components/custom_appbar_sports.dart';
import 'package:aet/AET/components/custom_gym_card.dart';
import 'package:aet/controller/gym_controller.dart';
import 'package:aet/domain/gym/gym_generateIntroductions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sports extends StatelessWidget {
  final GymController g = Get.put(GymController());
  final List<String> introductions = generateIntroductions();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBarSports(),
        body: RefreshIndicator(
          onRefresh: () async {
            await g.onInit;
          },
          child: Obx(() {
            if (g.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            } else {
              return SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(), // 이 부분은 스크롤 가능함을 보장
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: g.paginatedGyms.asMap().map((i, gym) {
                      String introductionText = i < introductions.length ? introductions[i] : "\n 준비중입니다. \n";
                      return MapEntry(i, CustomGymCard(
                        ticketPrice: 12000,
                        imageBytes: gym.imageList.isNotEmpty
                            ? gym.imageList[0].imageBytes
                            : '',
                        name: gym.name,
                        city: gym.city,
                        street: gym.street,
                        sports: gym.sports,
                        zipCode: '', gymNumber: '', managerNumber: '',
                        introduction: introductionText,
                      ));
                    }).values.toList(),
                  ),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}