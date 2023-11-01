import 'package:flutter/material.dart';
import '../Button/action_Button.dart';
import '../Button/leading_Button.dart';
import '../Container/Container.dart';


class first extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<first> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar1(),
      body: HomeContainer1(),   //second third 다름
    );
  }
}

class MyAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Gym'),
      backgroundColor: Colors.orangeAccent,
      elevation: 1,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.black,fontSize: 20.0),

      leading: leading_Button(),

      actions: <Widget>[
        action_Button(),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(120.0);
}
