class GymListDto {
  final String gymName;
  final Address gymAddress;
  final String gymNumber;
  final String managerNumber;
  final String gymSports;

  GymListDto({
    required this.gymName,
    required this.gymAddress,
    required this.gymNumber,
    required this.managerNumber,
    required this.gymSports,
  });

  factory GymListDto.fromJson(Map<String, dynamic> json) {
    return GymListDto(
      gymName: json['gymName'],
      gymAddress: Address.fromJson(json['gymAddress']),
      gymNumber: json['gymNumber'],
      managerNumber: json['managerNumber'],
      gymSports: json['gymSports'],
    );
  }
}

class Address {
  final String city;
  final String street;
  final String zipCode;

  Address({required this.city, required this.street, required this.zipCode});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city: json['city'],
      street: json['street'],
      zipCode: json['zipCode'],
    );
  }
}
