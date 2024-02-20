import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void main() => runApp(Training2Page());

class Training2Page extends StatelessWidget {
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
              home: MyHomePage(
                website: userData['website'] ?? "",
                phone: userData['phone'] ?? "",
                email: userData['email'] ?? "",
                username: userData['username'] ?? "",
                id: userData['id'] ?? 0,
                name: userData['name'] ?? "",
                body: userData['body'] ?? "",
                commentsData: commentsData,
              ),
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
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));
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

class MyHomePage extends StatelessWidget {
  final String website;
  final String phone;
  final String email;
  final String username;
  final int id;
  final String body;
  final String name;
  final dynamic commentsData;

  MyHomePage({
    Key? key,
    required this.id,
    required this.name,
    required this.body,
    required this.username,
    required this.website,
    required this.phone,
    required this.email,
    required this.commentsData,
  }) : super(key: key);

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
                      "번호 : $phone",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.black),
                    Text(
                      "이름 : $username",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "이름 : $username",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "이름 : $username",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "이름 : $website",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "이름 : $website",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "이름 : $email",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.black),
                    Text(
                      "일일권",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => TimeClickPage());
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        width: 380.0,
                        height: 100.0,
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.red,
                              ),
                              width: 30.0,
                              height: 100.0,
                              child: Center(
                                child: RotatedBox(
                                  quarterTurns: 1,
                                  child: Text(
                                    "짐 보 따 리",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 1, color: Colors.black),
                    InkWell(
                      onTap: () {
                        Get.to(() => TimeClickPage());
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        width: 380.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              color: Colors.red),
                          width: 30.0,
                          height: 100.0,
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: Text(
                                "짐 보 따 리",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.black),
                    Text(
                      "이용후기",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "PretendardVariable.ttf",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "이름 : $name",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "내용 : $id",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "이름 : $name",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "내용 : $id",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    Divider(thickness: 2, color: Colors.black),
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
  double get maxExtent => 225;

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
        title: Text('Time Click Page'),
      ),
      body: Center(
        child: Text('Time Click Page Content'),
      ),
    );
  }
}
