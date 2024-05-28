import 'package:aet/AET/components/custom_appbar_sports.dart';
import 'package:aet/AET/components/custom_gym_card.dart';
import 'package:aet/controller/gym_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(Sports());

class Sports extends StatelessWidget {
  final GymController g = Get.put(GymController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBarSports(),
        body: Obx((){
            if (g.isLoading.value){
              return Center(child: CircularProgressIndicator());
            } else {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: g.paginatedGyms.map((gym) {
                      return CustomGymCard(
                        imageBytes: gym.imageList.isNotEmpty
                            ? gym.imageList[0].imageBytes
                            : '',
                        name: gym.name,
                        city: gym.city,
                        street: gym.street,
                        sports: gym.sports,
                        zipCode: '', gymNumber: '', managerNumber: '',
                      );
                    }).toList(),
                  ),
                ),
              );
            }
        }),
      ),
    );
  }
}
