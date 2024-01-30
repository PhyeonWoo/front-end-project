import 'package:aet/util/host.dart';
import 'package:get/get.dart';

class UserProvider extends GetConnect {
  Future<Response> login(Map requestData) => post("$host/auth/login", requestData);
  Future<Response> join(Map requestData) => post("$host/auth/join", requestData);
}
