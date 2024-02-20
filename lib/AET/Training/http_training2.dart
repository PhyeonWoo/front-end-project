import 'package:aet/AET/Sports_Category/sports_appbar.dart';
import 'package:aet/AET/Training/dio.dart';
import 'package:aet/AET/Training/http_training2_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gym {
  final String name;
  final String sports;
  final String? city;
  final String? zipCode;
  final String? gym_seq;

  Gym({required this.name, required this.sports, required this.zipCode, required this.city,required this.gym_seq});
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
      final response = await dio.get('http://localhost:8080/gyms/all');
      final responseData = response.data;

      final List<dynamic> gymsData = responseData['data'];


      gyms = gymsData.map((gymData) {
        final Map<String, dynamic> gym = gymData as Map<String, dynamic>;
        return Gym(
          name: gym['gymName'],
          sports: gym['gymSports'],
          city: gym['City'],
          zipCode: gym['zipCode'],
          gym_seq: gym['gymSeq'],

        );
      }).toList();

      setState(() {});   // 화면 갱신을 위해 setState 호출
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: sports_appbar(),
        body: gyms != null
            ? ListView.builder(
          itemCount: gyms.length,
          itemBuilder: (context, index) {
            final gym = gyms[index];
            return InkWell(
              onTap: () {
                Get.to(() => TimeClickPage());
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 200,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 300,bottom: 20),
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(57,145,72,1),
                      ),
                      child: Center(
                        child: Text(
                          "${gym.sports}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "이미지 들어갈 부분\n",
                      ),
                    ),
                    // Text("이미지 들어갈 부분\n"),
                    Divider(thickness: 2,color: Colors.black,),
                    Text("\n체육관 이름: ${gym.name}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("주소 : ${gym.city}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text("우편주소 : ${gym.zipCode}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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

void main() {
  runApp(GymListPage());
}
