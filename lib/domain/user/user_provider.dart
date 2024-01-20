import 'package:aet/util/host.dart';
import 'package:get/get.dart';

class UserProvider extends GetConnect{
  Future<Response> login(Map date) => post("$host/auth/login", date);
}