import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aet/AET/components/custom_noticeEvent_choice.dart';
import 'package:aet/controller/notice_event_controller.dart';
import 'package:aet/util/color.dart';

class NoticeEvent extends StatelessWidget {
  final NoticeEventController controller = Get.put(NoticeEventController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.darkGrey),
            onPressed: () => Get.back(),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Obx(() => CustomUnderLine(
                    category: '공지사항',
                    isSelected: controller.selectedValue.value == 1,
                    onSelected: () {
                      controller.selectedValue(1);
                    },
                  )),
                Expanded(
                  child: Obx(() => CustomUnderLine(
                    category: '이벤트',
                    isSelected: controller.selectedValue.value == 2,
                    onSelected: () {
                      controller.selectedValue(2);
                    },
                  )),
                ),
              ],
            ),
          ),
        ),
        body: Obx(() {
          if (controller.selectedValue.value == 1) {
            // 공지사항 리스트를 표시
            return NoticesListWidget();
          } else if (controller.selectedValue.value == 2) {
            // 이벤트 리스트를 표시
            return EventsListWidget();
          } else {
            return Container(); // 기본값으로 빈 컨테이너를 표시
          }
        }),
      ),
    );
  }
}

class NoticesListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 공지사항 리스트를 구성하는 위젯
    return Center(child: Text('공지사항 리스트'));
  }
}

class EventsListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 이벤트 리스트를 구성하는 위젯
    return Center(child: Text('이벤트 리스트'));
  }
}
