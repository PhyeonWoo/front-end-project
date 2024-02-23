



import 'dart:convert';
import 'package:aet/AET/Training/buy_ticket.dart';
// import 'package:aet/AET/Training/profile_photo_name_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main() => runApp(time_click());

class time_click extends StatelessWidget {
  time_click({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int userId = 1;

    return FutureBuilder<Map<String, dynamic>>(
      future: fetchData(userId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text('에러: ${snapshot.error}');
          } else {
            var userData = snapshot.data!['user'] ?? {};
            var commentsData = snapshot.data!['comments'] ?? {};

            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              home: MyHomePage(),
            );
          }
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<Map<String, dynamic>> fetchData(int userId) async {
    final userResponse =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/$userId'));
    final commentsResponse =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1/comments'));

    if (userResponse.statusCode == 200 && commentsResponse.statusCode == 200) {
      final userData = json.decode(userResponse.body);
      final commentsData = json.decode(commentsResponse.body);

      return {
        'user': userData,
        'comments': commentsData,
      };
    } else {
      throw Exception('데이터 불러오기 실패');
    }
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverPersistentHeaderDelegate(),
            pinned: false,
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "노원 테니스장",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "노원구 상계동21-111",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text("일일권",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text(" 12,000원",style: TextStyle(fontSize: 15),)
                        ],
                      ),
                      Divider(thickness: 2, color: Colors.black),

                      Text(
                        "노원 테니스장입니다. 설명란 입니다. \n설명을 적으세요\n\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Divider(thickness: 2, color: Colors.black),

                      Align(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white60),
                            elevation: MaterialStateProperty.all(0),
                          ),
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2025),
                            ).then((selectedDate) {
                              setState(() {
                                _selectedDate = selectedDate;
                              });
                            });
                          },
                          child: Text(
                            _selectedDate != null
                                ? _selectedDate.toString().split(" ")[0]
                                : "날짜 선택",
                            style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [

                              InkWell(
                                  onTap: () {
                                    Get.to(() => BuyTicket());
                                  },
                                  child: Container(
                                    child: Align(
                                      child: Text("09:00 ~ 10:00",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12
                                        ),),
                                    ),
                                    margin: EdgeInsets.only(left: 10),
                                    width: 90,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  )),

                              InkWell(
                                onTap: () {
                                  Get.to(() => BuyTicket());
                                },
                                child: Container(
                                  child: Align(
                                    child: Text("10:00 ~ 11:00",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  width: 90,
                                  height: 60,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  Get.to(() => BuyTicket());
                                },
                                child: Container(
                                  child: Align(
                                    child: Text("11:00 ~ 12:00",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  width: 90,
                                  height: 60,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),


                              InkWell(
                                onTap: () {
                                  Get.to(() => BuyTicket());
                                },
                                child: Container(
                                  child: Align(
                                    child: Text("12:00 ~ 13:00",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  width: 90,
                                  height: 60,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  //Get.to(() => BuyTicket());
                                },
                                child: Container(
                                  child: Align(
                                    child: Text("13:00 ~ 14:00",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  width: 90,
                                  height: 60,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),

                              InkWell(
                                onTap: () {
                                  Get.to(() => BuyTicket());
                                },
                                child: Container(
                                  child: Align(
                                    child: Text("14:00 ~ 15:00",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  width: 90,
                                  height: 60,
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),



                            ],
                          ),
                        ),
                      ),
                      Text("\n"),
                      Divider(thickness: 2,color: Colors.black,),
                      Text(
                        "이용후기\n",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10,10,10),
                            // child: ProfileName1(),
                          ),
                          Divider(thickness: 1,color: Colors.grey,),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10,10,10),
                            // child: ProfileName1(),
                          ),
                          Divider(thickness: 1,color: Colors.grey,),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10,10,10),
                            // child: ProfileName1(),
                          ),
                          Divider(thickness: 1,color: Colors.grey,),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10,10,10),
                            // child: ProfileName1(),
                          ),
                          Divider(thickness: 1,color: Colors.grey,),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10,10,10),
                            // child: ProfileName1(),
                          ),
                          Divider(thickness: 1,color: Colors.grey,),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10,10,10,10),
                            // child: ProfileName1(),
                          ),
                        ],
                      )
                    ],
                  ),
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
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
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
  double get maxExtent => 280;

  @override
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}


