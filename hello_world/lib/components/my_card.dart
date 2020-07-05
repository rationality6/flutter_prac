import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text("MyCard"), Text("MyCard"), Text("MyCard")],
    ));
  }
}
