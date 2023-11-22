import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';



class address_page extends StatelessWidget {
  const address_page({Key? key}) : super(key: key);

  @override
  Widget  build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          minimum: EdgeInsets.all(16.0),
          child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search,color: Colors.grey),
            prefixIconConstraints: BoxConstraints(
              minWidth: 24,
              minHeight: 24,
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            hintText: '주소 입력',
            hintStyle: TextStyle(color: Theme.of(context).hintColor),
          ),
          ),
        ),
        SafeArea(
          minimum: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.compass,
                  color: Colors.white,
                ),
                label: Text("현재 위치로 찾기",
                style: Theme.of(context).textTheme.button,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor
                ),
              )
            ],
          ),
        )
      ],);
  }
}