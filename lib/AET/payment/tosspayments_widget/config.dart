import 'package:aet/AET/payment/payment_page.dart';
import 'package:tosspayments_widget_sdk_flutter/model/payment_widget_options.dart';

class LocalConfig {
  static UIState get uiState {
    return _dev;
  }
  static final UIState _dev = UIState(
    clientKey: 'test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm',
    customerKey: 'CUSTOMER_KEY',
    currency: Currency.KRW,
    country: "KR",
    amount: 50000,
    redirectUrl: null,
  );
}
