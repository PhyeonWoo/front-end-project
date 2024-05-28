class Gym {
  final String name;
  final String sports;
  final String city;
  final String street;
  final String zipCode;
  final String gymNumber;
  final String managerNumber;
  final List<ImageData> imageList;

  Gym({
    required this.name,
    required this.sports,
    required this.city,
    required this.street,
    required this.zipCode,
    required this.gymNumber,
    required this.managerNumber,
    required this.imageList,
  });

  factory Gym.fromJson(Map<String, dynamic> json) {
    return Gym(
      name: json['gymName'],
      sports: json['gymSports'],
      city: json['gymAddress']['city'],
      street: json['gymAddress']['street'],
      zipCode: json['gymAddress']['zipCode'],
      gymNumber: json['gymNumber'],
      managerNumber: json['managerNumber'],
      imageList: (json['imageList'] as List)
          .map((image) => ImageData.fromJson(image))
          .toList(),
    );
  }
}

class ImageData {
  final String fileName;
  final String imageBytes;

  ImageData({
    required this.fileName,
    required this.imageBytes,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      fileName: json['fileName'],
      imageBytes: json['imageBytes'],
    );
  }
}
