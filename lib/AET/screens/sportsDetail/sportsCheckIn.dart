import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:aet/AET/components/custom_bottomsheet.dart';
import 'package:aet/AET/components/custom_checkbox.dart';
import 'package:aet/AET/screens/navigation/homeNavigation.dart';
import 'package:aet/controller/bottom_nav_controller.dart';
import 'package:aet/controller/checkbox_controller.dart';
import 'package:aet/controller/order_controller.dart';
import 'package:aet/controller/ticket_controller.dart';
import 'package:aet/controller/user_controller.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportsCheckIn extends StatelessWidget {
  final Widget photo;
  final String name;
  final String sports;
  final int ticketPrice;

  const SportsCheckIn({
    required this.photo,
    required this.name,
    required this.sports,
    required this.ticketPrice,

  });

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    final CheckboxController c = Get.put(CheckboxController());
    final UserController u = Get.put(UserController());
    final OrderController d = Get.put(OrderController());
    final BottomNavController B = Get.put(BottomNavController());
    final TicketController t = Get.put(TicketController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColor.backgroundColors,
        bottomSheet: CustomBottomSheet(title: "결제하기",funPageRoute:()async{
          if(c.isAllChecked.value == true){
            if(ticketPrice <= u.principal.value.point!) {
              bool success = await d.order(
                "${u.principal.value.memberId}",
                "${u.principal.value.nickName}",
                ticketPrice,
                "${name}",
                1,
                1,
                "0",
                "0",
              );
              if (success) {
                await u.fetchUserPoints(u.Token.value.memberId!);
                B.tabIndex.value = 0;
                await t.fetchTickets(u.principal.value.memberId!);
                await Get.to(Navigation());
              }
            } else{
              Get.snackbar("금액 부족", "보유하신 포인트가 부족합니다.");
            }
          } else{
            Get.snackbar("동의가 필요합니다.", "동의하기 버튼을 눌러주세요.");
          }
        }),
        appBar: CustomAppbar(
          titleWrite: "구매하기",
          BackButton: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: heightSize * 0.3,
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "예약 정보",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Pretendard",
                              color: AppColor.darkGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                    width: 90, height: 85, child: photo)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "일일권 ",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "${ticketPrice}원",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    name,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    ' ${sports}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                              Text(
                                "일일권",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "Pretendard",
                                    color: AppColor.darkGrey,
                                    fontWeight: FontWeight.w200),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "담당자: 김철수 / 전화번호: 010-XXXX-XXXX",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Pretendard",
                                  color: AppColor.darkGrey,
                                  fontWeight: FontWeight.w100),
                            ),
                            Text(
                              "주의사항: 음주자는 시설이용을 금합니다.",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: "Pretendard",
                                  color: AppColor.darkGrey,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomCheckbox(
                            isChecked: c.isChecked1,
                            toggleCheckbox: () => c.toggleCheckbox(1, !c.isChecked1.value),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "예약하시는 장소의 정보를 확인했으며 ",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Pretendard",
                              color: AppColor.darkGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            "동의",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Pretendard",
                              color: AppColor.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "합니다.",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Pretendard",
                              color: AppColor.darkGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: heightSize * 0.25,
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "포인트사용하기",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Pretendard",
                              color: AppColor.darkGrey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "상품금액",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    "${ticketPrice}원",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "보유중인포인트",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.w200),
                                  ),
                                  Text(
                                    "${u.principal.value.point}원",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "결제후포인트",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "${u.principal.value.point! - ticketPrice}원",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Pretendard",
                                        color: AppColor.darkGrey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                height: heightSize * 0.45,
                color: AppColor.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "일일권 사용안내",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Pretendard",
                            color: AppColor.darkGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "-  입장하실 때, 근무 직원을 통해 일일권 사용 여부를 확인한 후 입장해주세요.\n"
                        "일일권 확인을 거치지 않을 경우, 이후 시설 및 서비스 이용에 제한이 생길 수 있습니다.\n"
                        "\n-  결제 전, 반드시 시설 제공 및 안내사항, 입장 횟수, 그리고 이용시간 제한을 확인해주세요.\n"
                        "이러한 규정을 준수하지 않을 경우, 시설 이용이 불가능하며 환불 및 이용 취소도 불가능합니다.\n"
                        "\n-  일일권의 유효기간이 만료되면, 해당 일일권은 무효화되며, 시설 이용 및 환불이 불가능합니다.\n"
                        "이 일일권은 구매 후 즉시 사용할 수 있으며, 유효기간은 구매일로부터 30일입니다.\n"
                        "\n-  유효기간 내에 사용하지 않은 일일권은 환불이 가능하며, 별도의 취소 수수료는 부과되지 않습니다.\n",
                        style: TextStyle(
                            fontSize: 9,
                            fontFamily: "Pretendard",
                            color: AppColor.darkGrey,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomCheckbox(
                                  isChecked: c.isAllChecked,
                                  toggleCheckbox: () => c.toggleAllChecked(!c.isAllChecked.value),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "전체 동의",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Pretendard",
                                    color: AppColor.darkGrey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      CustomCheckbox(
                                        isChecked: c.isChecked2,
                                        toggleCheckbox: () => c.toggleCheckbox(2, !c.isChecked2.value),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "기간제 포인트를 확인했으며 동의",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Pretendard",
                                          color: AppColor.darkGrey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomCheckbox(
                                        isChecked: c.isChecked3,
                                        toggleCheckbox: () => c.toggleCheckbox(3, !c.isChecked3.value),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "취소 및 환불 규정 동의",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Pretendard",
                                          color: AppColor.darkGrey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      CustomCheckbox(
                                        isChecked: c.isChecked4,
                                        toggleCheckbox: () => c.toggleCheckbox(4, !c.isChecked4.value),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "개인정보 제 3자 제공 동의 ",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Pretendard",
                                          color: AppColor.darkGrey,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 110,),
            ],
          ),
        ),
      ),
    );
  }
}
