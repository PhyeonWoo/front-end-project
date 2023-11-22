import 'package:intl/intl.dart';

class ProviderList{
  final int? id;
  final String? providername;
  final String? email;
  final DateTime? created;
  final DateTime? updated;

  ProviderList({this.id, this.providername, this.email, this.created, this.updated});

  ProviderList.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        providername = json["providername"],
        email = json["email"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]),
        updated = DateFormat("yyyy-mm-dd").parse(json["updated"]);
}