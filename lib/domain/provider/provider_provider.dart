import 'package:get/get.dart';

const host = "http://192.210.57.38:8080";

class ProviderProvider extends GetConnect{
  Future<Response> ProviderSearch(Map date) => post("$host/ProviderSearch", date);
}