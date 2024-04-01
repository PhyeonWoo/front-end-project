// import 'package:aet/AET/Training/TimeClick.dart';
// import 'package:aet/AET/Training/http_training2.dart';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class GymDetailsPage extends StatelessWidget {
//   final Gym gym;
//   GymDetailsPage({required this.gym});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverPersistentHeader(delegate: MySliverPersistentHeaderDelegate(),
//             pinned: false,
//             floating: false,
//             ),
//             SliverList(delegate: SliverChildListDelegate([
//               Container(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text("${gym.name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
//
//                     Container(
//                       margin: EdgeInsets.only(right: 300),
//                       width: 50,
//                       height: 20,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Color.fromRGBO(57,145,72,1),
//                       ),
//                       child: Center(
//                         child: Text(
//                           "${gym.sports}",
//                           style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
//                         ),
//                       ),
//                     ),
//
//
//                     Text("${gym.city} ${gym.street}"),
//                     Divider(thickness: 2,color: Colors.black,),
//                     Text("${gym.sports}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
//                     // Text("${gym.city}",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
//
//                     Divider(thickness: 2,color: Colors.black,),
//
//                     Text("일일권",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//
//                     InkWell(
//                       onTap: () {
//                         Get.to(() => time_click());
//                       },
//                       child: Container(
//                         alignment: Alignment.centerRight,
//                         margin: EdgeInsets.fromLTRB(10,10,0,10),
//                         width: 380,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black,width: 1),
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(left: 20),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                       padding: EdgeInsets.only(top: 10),
//                                     child: Text(
//                                       "헬스 이용권",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(10),
//                                   bottomRight: Radius.circular(10)),
//                                 color: Colors.red,
//                               ),
//                               width: 30,
//                               height: 100,
//                               child: Center(
//                                 child: RotatedBox(
//                                   quarterTurns: 1,
//                                   child: Text(
//                                     "짐 보 따 리",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     InkWell(
//                       onTap: () {
//                         Get.to(() => time_click());
//                       },
//                       child: Container(
//                         alignment: Alignment.centerRight,
//                         margin: EdgeInsets.fromLTRB(10,10,0,0),
//                         width: 380,
//                         height: 100,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black,width: 1),
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.white,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               margin: EdgeInsets.only(left: 20),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(top: 10),
//                                     child: Text(
//                                       "이용권",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 16),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Container(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(10),
//                                     bottomRight: Radius.circular(10)),
//                                 color: Colors.red,
//                               ),
//                               width: 30,
//                               height: 100,
//                               child: Center(
//                                 child: RotatedBox(
//                                   quarterTurns: 1,
//                                   child: Text(
//                                     "짐 보 따 리",
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 17,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//
//
//                   ],
//                 ),
//               ),
//               Divider(thickness: 2,color: Colors.black,),
//               Text(
//                 "이용후기",
//                 style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                 ),
//               )
//             ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//

import 'package:aet/AET/Training/http_training2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GymDetailsPage extends StatelessWidget {
  final Gym gym;

  GymDetailsPage({required this.gym});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverPersistentHeaderDelegate(),
            pinned: false,
            floating: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text(
                          "${gym.name}",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(width: 15), // 간격 조절
                        Container(
                          width: 50,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(57, 145, 72, 1),
                          ),
                          child: Center(
                            child: Text(
                              "${gym.sports}",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // 간격 조절
                    Text("${gym.city} ${gym.street}"),
                    Divider(thickness: 2, color: Colors.black),
                    Text(
                      "${gym.sports}\n",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Divider(thickness: 2, color: Colors.black),
                    Text("일일권", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    InkWell(
                      onTap: () {
                        Get.to(() => TimeClickPage());
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "헬스 이용권",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.red,
                              ),
                              width: 30,
                              height: 100,
                              child: Center(
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Text(
                                    "짐 보 따 리",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => TimeClickPage());
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        width: 380,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      "이용권",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.red,
                              ),
                              width: 30,
                              height: 100,
                              child: Center(
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Text(
                                    "짐 보 따 리",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.black),
                    Text(
                      "이용후기",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3, // 이미지 개수
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
          child: Image(
            image: AssetImage('assets/images/${index + 1}.png'),
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width, // 이미지를 좌우로 스크롤하도록 너비 조정
          ),
        );
      },
    );
  }

  @override
  double get maxExtent => 240;

  @override
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class TimeClickPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: SafeArea(
        child: Text("test"),
      ),
    );
  }
}
