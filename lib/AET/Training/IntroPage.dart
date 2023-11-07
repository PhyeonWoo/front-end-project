import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';


class IntroPage extends StatelessWidget {
 const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('GYM보따리',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green),
              ),

              ExtendedImage.asset('assets/images/gym.png'),
              Text('GYM보따리\n   로그인창',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              ),
              Text("로그인창\n로그인창",
                style: TextStyle(fontSize: 13,color: Colors.black),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text('로그인',
                      style: TextStyle(color: Colors.white),
                      ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
