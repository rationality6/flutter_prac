import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello_world/components/body.dart';
import 'package:hello_world/components/my_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, appBar: buildAppBar(), body: Body());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        // padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.black,
        icon: FaIcon(FontAwesomeIcons.bars),
        onPressed: () {
          print("pressed left");
        },
      ),
      actions: <Widget>[
        IconButton(
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.black,
            icon: FaIcon(FontAwesomeIcons.search),
            onPressed: () {
              print("pressed right");
            }),
      ],
    );
  }
}
