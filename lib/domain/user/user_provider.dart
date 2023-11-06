
import 'package:get/get.dart';

const host = "http://192.210.7.242:8080";

class UserProvider extends GetConnect{
  Future<Response> login(Map date) => post("$host/login", date);
}