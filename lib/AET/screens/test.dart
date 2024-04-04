import 'package:aet/domain/gym/gym_provider.dart';
import 'package:flutter/material.dart';
import 'package:aet/controller/dto/GymListDto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GymProvider _gymProvider = GymProvider(); // Create an instance of GymProvider

  Future<List<GymListDto>> fetchGyms() async {
    return await _gymProvider.GymSearchAll(); // Use GymProvider to fetch gyms
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('체육관 리스트'),
        ),
        body: FutureBuilder<List<GymListDto>>(
          future: fetchGyms(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              }
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  GymListDto gym = snapshot.data![index];
                  return ListTile(
                    title: Text(gym.gymName),
                    subtitle: Text('${gym.gymAddress.city}, ${gym.gymSports}'),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
