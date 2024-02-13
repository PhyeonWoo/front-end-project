import 'package:aet/AET/components/custom_appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tosspayments_widget_sdk_flutter/model/tosspayments_result.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  Row makeRow(String title, String message) {
    return Row(children: [
      Expanded(flex: 3, child: Text(title, style: const TextStyle(color: Colors.grey))),
      Expanded(
        flex: 8,
        child: Text(message),
      )
    ]);
  }
  Container getContainer(dynamic result) {
    if (result is Success) {
      Success success = result;
      return Container(
        child: Column(
          children: <Widget>[
            makeRow('paymentKey', success.paymentKey),
            const SizedBox(height: 20),
            makeRow('orderId', success.orderId),
            const SizedBox(height: 20),
            makeRow('amount', success.amount.toString()),
            const SizedBox(height: 20),
            Column(
                children: success.additionalParams?.entries
                    .map<Widget>((e) => Column(
                  children: [makeRow(e.key, e.value), const SizedBox(height: 10)],
                ))
                    .toList() ??
                    []),
            Center(
              child: Text(
                '복사하기',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    } else if (result is Fail) {
      Fail fail = result;
      return Container(
        child: Column(
          children: <Widget>[
            makeRow('errorCode', fail.errorCode),
            const SizedBox(height: 20),
            makeRow('errorMessage', fail.errorMessage),
            const SizedBox(height: 20),
            makeRow('orderId', fail.orderId),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    dynamic result = Get.arguments;
    String message;

    if (result is Success) {
      message = '인증 성공! 결제승인API를 호출해 결제를 완료하세요!';
    } else {
      message = '결제에 실패하였습니다';
    }
    return Scaffold(
        appBar: CustomAppbar(titleWrite:"결제결과"),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  message,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 50),
                getContainer(result),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Get.back();
                  },
                  label: const Text(
                    '홈으로',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shadowColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
