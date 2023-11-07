import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'location.dart';
import 'auth_screen.dart';
import 'splash_screen.dart';

final _routerDelegate = BeamerDelegate(
    guards: [BeamGuard(
        pathBlueprints:['/'],
        check: (context, location) {return false;},
      showPage: BeamPage(child: AuthScreen())
    )],

    locationBuilder: BeamerLocationBuilder(
      beamLocations: [HomeLocation()],
    )
);


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<Object>(
      future: Future.delayed(Duration(seconds: 3), () => 100),
      builder: (context, snapshot) {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 900),
          child: _splashLodingWidget(snapshot),
        );
      },
    );
  }
  StatelessWidget _splashLodingWidget(AsyncSnapshot<Object> snapshot) {
    if(snapshot.hasError) {print('에러가 발생했습니다.'); return Text('Error');}
    else if(snapshot.hasData) {return RadishApp();}
    else{return SplashScreen();}
  }
}


class RadishApp extends StatelessWidget {
  const RadishApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate,
    );
  }
}
