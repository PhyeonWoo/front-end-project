import 'package:aet/AET/components/custom_checkbox.dart';
import 'package:aet/controller/pay_syteam_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentOptions extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomCheckbox(
                  isChecked: controller.isOption0Checked,
                  toggleCheckbox: controller.toggleOption0
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10,0,0,2),
                child: Text("전체동의",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontFamily: "customFonts",
                  color: Color(0xFF4f4f4f)
                ),),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10,),
              CustomCheckbox(
                  isChecked: controller.isOption1Checked,
                  toggleCheckbox: controller.toggleOption1
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10,0,0,2),
                child: Text("기간제 포인트 동의",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "customFonts",
                    color: Color(0xFF4f4f4f)
                ),),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10,),
              CustomCheckbox(
                  isChecked: controller.isOption2Checked,
                  toggleCheckbox: controller.toggleOption2
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10,0,0,2),
                child: Text("취소 및 환불 규정 동의",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "customFonts",
                    color: Color(0xFF4f4f4f)
                ),),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10,),
              CustomCheckbox(
                  isChecked: controller.isOption3Checked,
                  toggleCheckbox: controller.toggleOption3
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10,0,0,2),
                child: Text("개인정보 제 3자 제공 동의",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "customFonts",
                    color: Color(0xFF4f4f4f)
                ),),
              )
            ],
          ), // 나머지 옵션들에 대한 체크박스 위젯들을 추가할 수 있습니다.
        ],
      ),
    );
  }
}
