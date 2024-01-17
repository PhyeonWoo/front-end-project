// import 'package:aet/AET/Sports_Category/sports_appbar.dart';
// import 'package:aet/AET/widgets/action_Button.dart';
// import 'package:flutter/material.dart';
// import 'dart:async'; // async / await 지원
// import 'dart:convert'; // JSON 데이터 처리 지원
// import 'package:flutter/foundation.dart'; // compute 함수를 제공
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// import 'http_training2_page.dart';
//
//
// // 사진의 정보를 저장하는 클래스
// class Photo {
//   final int albumId;
//   final int id;
//   final String title;
//   final String url;
//   final String thumbnailUrl;
//   Photo({required this.albumId, required this.id, required this.title, required this.url, required this.thumbnailUrl});
//
//
//   // 사진의 정보를 포함하는 인스턴스를 생성하여 반환하는 factory 생성자
//   factory Photo.fromJson(Map<String, dynamic> json) {
//     return Photo(
//       albumId: json['albumId'] as int,
//       id: json['id'] as int,
//       title: json['title'] as String,
//       url: json['url'] as String,
//       thumbnailUrl: json['thumbnailUrl'] as String,
//     );
//   }
// }
//
//
// void main() => runApp(JsonParse());
//
// class JsonParse extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
//
// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: sports_appbar(),
//
//       // Photo의 리스트를 처리하는 FutureBuilder 추가
//       body: FutureBuilder<List<Photo>>(
//         // future 항목에 fetchPhotos 함수 설정. fetchPhotos는 Future 객체를 결과값으로 반환
//         future: fetchPhotos(http.Client()),
//         // Future 객체를 처리할 빌더
//         builder: (context, snapshot) {
//           // 에러가 발생하면 에러 출력
//           if (snapshot.hasError) print(snapshot.error);
//           // 정상적으로 데이터가 수신된 경우
//           return snapshot.hasData
//               ? PhotosList(photos: snapshot.requireData) // PhotosList를 출력
//               : Center(
//               child: CircularProgressIndicator()); // 데이터 수신 전이면 인디케이터 출력
//         },
//       ),
//     );
//   }
// }
//
//
//
// // 서버로부터 데이터를 수신하여 그 결과를 List<Photo> 형태의 Future 객체로 반환하는 async 함수
// Future<List<Photo>> fetchPhotos(http.Client client) async {
//   // 해당 URL로 데이터를 요청하고 수신함
//   final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
//
//   // parsePhotos 함수를 백그라운도 격리 처리
//   return compute(parsePhotos, response.body);
// }
//
//
// // 수신한 데이터를 파싱하여 List<Photo> 형태로 반환
// List<Photo> parsePhotos(String responseBody) {
//   // 수신 데이터를 JSON 포맷(JSON Array)으로 디코딩
//   final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//   // JSON Array를 List<Photo>로 변환하여 반환
//   return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
// }
//
//
// // 수신된 그림들을 리스트뷰로 작성하여 출력하는 클래스
// class PhotosList extends StatelessWidget {
//   final List<Photo> photos;
//   PhotosList({Key? key, required this.photos}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     // 그리드뷰를 builder를 통해 생성. builder를 이용하면 화면이 스크롤 될 때 해당 앨리먼트가 랜더링 됨
//     return GridView.builder(
//       gridDelegate:
//       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
//       itemCount: photos.length,
//       itemBuilder: (context, index) {
//         var photo = photos[index];
//
//         // 컨테이너를 생성하여 반환
//         return Container(
//           margin: EdgeInsets.fromLTRB(20,20,20,0),
//           decoration: BoxDecoration(
//             color: Colors.grey,
//             borderRadius: BorderRadius.circular(20),
//           ),
//
//           child: Column(
//             children: <Widget>[
//               InkWell(
//                 onTap: (){
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => training2_page()),
//                   );
//                 },
//                 child: Container(
//                   margin: EdgeInsets.fromLTRB(20,20,20,0),
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       Image(
//                         image: NetworkImage(photo.thumbnailUrl),
//                         width: 360,
//                         height: 280,
//                         fit: BoxFit.fill,
//                       ),
//                       Divider(color: Colors.black,thickness: 3,),
//
//                       Text("albumId : ${photo.albumId}",textAlign: TextAlign.center,
//                         style: TextStyle(fontWeight: FontWeight.bold),),
//                       Text("ID : ${photo.id}",textAlign: TextAlign.center,
//                         style: TextStyle(fontWeight: FontWeight.bold),),
//                       Text("title : ${photo.title}",textAlign: TextAlign.center,
//                         style: TextStyle(fontWeight: FontWeight.bold),),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }


import 'package:aet/AET/Sports_Category/sports_appbar.dart';
import 'package:aet/AET/widgets/action_Button.dart';
import 'package:flutter/material.dart';
import 'dart:async'; // async / await 지원
import 'dart:convert'; // JSON 데이터 처리 지원
import 'package:flutter/foundation.dart'; // compute 함수를 제공
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'http_training2_page.dart';


// 사진의 정보를 저장하는 클래스
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  Photo({required this.albumId, required this.id, required this.title, required this.url, required this.thumbnailUrl});


  // 사진의 정보를 포함하는 인스턴스를 생성하여 반환하는 factory 생성자
  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}


void main() => runApp(JsonParse());

class JsonParse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: sports_appbar(),
      // Photo의 리스트를 처리하는 FutureBuilder 추가
      body: FutureBuilder<List<Photo>>(
        // future 항목에 fetchPhotos 함수 설정. fetchPhotos는 Future 객체를 결과값으로 반환
        future: fetchPhotos(http.Client()),
        // Future 객체를 처리할 빌더
        builder: (context, snapshot) {
          // 에러가 발생하면 에러 출력
          if (snapshot.hasError) print(snapshot.error);
          // 정상적으로 데이터가 수신된 경우
          return snapshot.hasData
              ? PhotosList(photos: snapshot.requireData) // PhotosList를 출력
              : Center(
              child: CircularProgressIndicator()); // 데이터 수신 전이면 인디케이터 출력
        },
      ),
    );
  }
}



// 서버로부터 데이터를 수신하여 그 결과를 List<Photo> 형태의 Future 객체로 반환하는 async 함수
Future<List<Photo>> fetchPhotos(http.Client client) async {
  // 해당 URL로 데이터를 요청하고 수신함
  final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));

  // parsePhotos 함수를 백그라운도 격리 처리
  return compute(parsePhotos, response.body);
}


// 수신한 데이터를 파싱하여 List<Photo> 형태로 반환
List<Photo> parsePhotos(String responseBody) {
  // 수신 데이터를 JSON 포맷(JSON Array)으로 디코딩
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  // JSON Array를 List<Photo>로 변환하여 반환
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}


// 수신된 그림들을 리스트뷰로 작성하여 출력하는 클래스
class PhotosList extends StatelessWidget {
  final List<Photo> photos;
  PhotosList({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 그리드뷰를 builder를 통해 생성. builder를 이용하면 화면이 스크롤 될 때 해당 앨리먼트가 랜더링 됨
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        var photo = photos[index];

        // 컨테이너를 생성하여 반환
        return Container(
          margin: EdgeInsets.fromLTRB(20,20,20,0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Column(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Get.to(Training2Page());
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(20,20,20,0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: NetworkImage(photo.thumbnailUrl),
                        width: 360,
                        height: 280,
                        fit: BoxFit.fill,
                      ),
                      Divider(color: Colors.black,thickness: 3,),

                      Text("albumId : ${photo.albumId}",textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("ID : ${photo.id}",textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("title : ${photo.title}",textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
