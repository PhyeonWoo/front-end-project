
import 'package:aet/util/color.dart';
import 'package:flutter/material.dart';


class SportsTicket extends StatelessWidget {
  final Widget photo;
  final String title;
  final String description;
  final int price;
  final String tag;
  final VoidCallback onPressed;

  const SportsTicket({
    required this.photo,
    required this.title,
    required this.description,
    required this.price,
    required this.tag,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {

    final double angle = 90;
    double heightSize = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: heightSize * 0.13,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: AppColor.Shadow.withOpacity(0.25),
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: photo
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w500,
                            color: AppColor.darkGrey,
                          ),
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: "Pretendard",
                            fontWeight: FontWeight.w300,
                            color: AppColor.darkGrey,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${price}원",
                        style: TextStyle(
                          color: AppColor.darkGrey,
                          fontSize: 16.0,
                          fontFamily: "Pretendard",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColor.Shadow.withOpacity(0.25),
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
                color: AppColor.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
              child: Center(
                child: Transform.rotate(
                  angle: angle * 3.141592653589793 / 180,
                  child: Text(
                    tag,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
