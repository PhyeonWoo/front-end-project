import 'package:flutter/material.dart';

Widget buildCircularContainer(String imageUrl, String sportsText) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey,
          ),
          child: ClipOval(
            child: Image.network(
              imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          sportsText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
