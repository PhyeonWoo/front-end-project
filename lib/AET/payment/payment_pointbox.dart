import 'package:aet/AET/components/custom_choice_chips.dart';
import 'package:aet/controller/chips_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PointBox extends StatelessWidget {
  final ChoiceChipController controller = Get.put(ChoiceChipController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
              child: Text("현재 보유하고 있는 포인트",
                style: TextStyle(
                  color: Color(0xFF4F4F4F),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'customFonts',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,10,0,20),
              child: Container(
                child: Text("50,000P",
                  style: TextStyle(
                    color: Color(0xFF399148),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'customFonts',
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              //scrollDirection: Axis.horizontal, // 수평 스크롤 설정
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => CustomChoiceChip(
                    price: '5,000P',
                    description: '사용기한 1개월',
                    money: '5,000원',
                    isSelected: controller.selectedIndex.value == 1,
                    onSelected: () {
                      controller.selectChip(1);
                    },
                  )),
                  Obx(() => CustomChoiceChip(
                    price: '10,000P',
                    description: '사용기한 1개월',
                    money: '10,000원',
                    isSelected: controller.selectedIndex.value == 2,
                    onSelected: () {
                      controller.selectChip(2);
                    },
                  )),
                  Obx(() => CustomChoiceChip(
                    price: '15,000P',
                    description: '사용기한 1개월',
                    money: '15,000원',
                    isSelected: controller.selectedIndex.value == 3,
                    onSelected: () {
                      controller.selectChip(3);
                    },
                  )),
                  Obx(() => CustomChoiceChip(
                    price: '25,000P',
                    description: '사용기한 1개월',
                    money: '25,000원',
                    isSelected: controller.selectedIndex.value == 4,
                    onSelected: () {
                      controller.selectChip(4);
                    },
                  )),
                ],
              ),
            )
          ],
      ),
    );
  }
}
