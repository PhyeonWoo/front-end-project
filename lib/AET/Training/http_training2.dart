import 'dart:convert';
import 'dart:typed_data';

import 'package:aet/AET/Sports_Category/sports_appbar.dart';
import 'package:aet/AET/Training/http_training2_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(GymListPage());
}

class Gym {
  final String name;
  final String sports;
  final String? city;
  final String? street; // 추가된 필드
  final String? zipCode;
  final String? gym_seq;
  final List<ImageData> imageList; // 추가된 필드

  Gym({
    required this.name,
    required this.sports,
    required this.city,
    required this.street,
    required this.zipCode,
    required this.gym_seq,
    required this.imageList,
  });
}

class ImageData {
  final String fileName;
  final Uint8List imageBytes;

  ImageData({required this.fileName, required this.imageBytes});
}

class GymListPage extends StatefulWidget {
  @override
  _GymListPageState createState() => _GymListPageState();
}

class _GymListPageState extends State<GymListPage> {
  final Dio dio = Dio();
  late List<Gym> gyms = [];

  @override
  void initState() {
    super.initState();
    fetchGyms();
  }

  Future<void> fetchGyms() async {
    try {
      final response = await dio.get('http://localhost:8080/v1/gyms/all');
      final responseData = response.data;

      final List<dynamic> gymsData = responseData['data'];

      gyms = gymsData.map((gymData) {
        final Map<String, dynamic> gym = gymData as Map<String, dynamic>;

        // 이미지 리스트 생성
        List<ImageData> imageList = (gym['imageList'] as List<dynamic>).map((imageData) {
          return ImageData(
            fileName: imageData['fileName'],
            imageBytes: base64Decode(imageData['imageBytes']),
          );
        }).toList();

        return Gym(
          name: gym['gymName'],
          sports: gym['gymSports'],
          city: gym['gymAddress']['city'],
          street: gym['gymAddress']['street'],
          zipCode: gym['gymAddress']['zipCode'],
          gym_seq: gym['gymSeq'],
          imageList: imageList, // 이미지 리스트 추가
        );
      }).toList();

      setState(() {}); // 화면 갱신을 위해 setState 호출
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: sports_appbar(),
        body: gyms.isNotEmpty
            ? ListView.builder(
          itemCount: gyms.length,
          itemBuilder: (context, index) {
            final gym = gyms[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GymDetailsPage(gym: gym)),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity, // 전체 너비 사용
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          child: Row(
                            children: gym.imageList.map((imageData) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 0, top: 0),
                                child: Image.memory(
                                  imageData.imageBytes,
                                  fit: BoxFit.fill, // 이미지를 컨테이너에 꽉 차게 조정
                                  width: 370, // 이미지의 너비
                                  height: 200, // 이미지의 높이
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: 300, top: 10),
                            width: 50,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(57, 145, 72, 1),
                            ),
                            child: Center(
                              child: Text(
                                "${gym.sports}",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(""),
                        Text("${gym.name}",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("${gym.city} ${gym.street}\n",
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    )
                    // Text(
                    //   "\n${gym.name}",
                    //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   "주소 : ${gym.city}",
                    //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   "우편주소 : ${gym.zipCode}",
                    //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ),
            );

          },
        )
            : Center(child: CircularProgressIndicator()), // 데이터를 아직 가져오지 못한 경우 로딩 표시
      ),
    );
  }
}