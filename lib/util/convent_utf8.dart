import 'dart:convert';

dynamic convertUtf8ToObject(String body){

  String responseBody = jsonEncode(body);
  dynamic convertBody = jsonDecode(utf8.decode(body.codeUnits));
  return convertBody;
}