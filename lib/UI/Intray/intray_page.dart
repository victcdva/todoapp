import 'package:flutter/material.dart';

import '../../models/global.dart';

class IntrayPage extends StatefulWidget {
  const IntrayPage({Key? key}) : super(key: key);

  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: darkGreyColor,
        child: ListView(
          padding: const EdgeInsets.only(top: 300),
          children: getList(),
        ));
  }

  List<Widget> getList() {
    List<Container> list = [];
    for (int i = 0; i < 5; i++) {
      list.add(Container(
        height: 100,
        color: Colors.red,
      ));
      list.add(Container(
        height: 100,
        color: Colors.blue,
      ));
    }
    return list;
  }
}
