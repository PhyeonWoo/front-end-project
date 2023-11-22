import 'package:get/get.dart';

const host = "http://192.210.57.38:8080";

class UserProvider extends GetConnect{
  Future<Response> login(Map date) => post("$host/login", date);
}