import 'dart:convert';
import 'dart:typed_data';
import 'package:aet/AET/screens/sportsDetail/sportsDetail.dart';
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';

class CustomGymCard extends StatelessWidget {
  final String name;
  final String sports;
  final String city;
  final String street;
  final String zipCode;
  final String gymNumber;
  final String managerNumber;
  final String imageBytes;

  const CustomGymCard({
    required this.name,
    required this.sports,
    required this.city,
    required this.street,
    required this.zipCode,
    required this.gymNumber,
    required this.managerNumber,
    required this.imageBytes,
  });

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    Uint8List? decodedBytes;
    if (imageBytes.isNotEmpty) {
      decodedBytes = base64Decode(imageBytes);
    }

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SportDetail(
              name: name,
              city: city,
              street: street,
              sports: sports,
              zipCode: zipCode,
              gymNumber: gymNumber,
              managerNumber: managerNumber,
              imageBytes: imageBytes,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.75),
                blurRadius: 5,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Column(
              children: [
                Image.memory(
                  decodedBytes ?? base64Decode('assets/default_gym_image.png'), // Use a placeholder image base64 if decodedBytes is null
                  height: heightSize * 0.25,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTag(sports),
                      SizedBox(height: 5),
                      _buildTitle(name),
                      Text("${city} ${street}", style: _textStyle()),
                      _buildPriceInfo(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTag(String sports) => Container(
    decoration: BoxDecoration(
      color: AppColor.green,
      borderRadius: BorderRadius.circular(5),
    ),
    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
    child: Text(sports, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
  );

  Widget _buildTitle(String name) => Text(
    name,
    style: TextStyle(
      color: AppColor.darkGrey,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );

  TextStyle _textStyle() => TextStyle(
    color: AppColor.darkGrey,
    fontSize: 12,
    fontFamily: "Pretendard",
    fontWeight: FontWeight.w500,
  );

  Widget _buildPriceInfo() => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text("일일권", style: _textStyle()),
      SizedBox(width: 3),
      Text("4,000원", style: _textStyle().copyWith(fontWeight: FontWeight.w100)),
    ],
  );
}
