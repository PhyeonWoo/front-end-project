import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class SportDetail extends StatelessWidget {
  final String name;
  final String sports;
  final String city;
  final String street;
  final String zipCode;
  final String gymNumber;
  final String managerNumber;
  final String imageBytes;

  const SportDetail({
    required this.name,
    required this.sports,
    required this.city,
    required this.street,
    required this.zipCode,
    required this.gymNumber,
    required this.managerNumber,
    required this.imageBytes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: _buildBackgroundImage(heightSize),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage(double heightSize) {
    if (imageBytes.isNotEmpty) {
      Uint8List decodedBytes = base64Decode(imageBytes);
      return Image.memory(
        decodedBytes,
        height: heightSize * 0.25,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        'assets/default_gym_image.png',
        height: heightSize * 0.25,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }
  }
}
