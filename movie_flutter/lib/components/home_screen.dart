import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_flutter/components/body.dart';
import 'package:movie_flutter/components/sidebar/sidebar.dart';
import 'package:movie_flutter/components/etc/router_directions.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        // padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.black,
        icon: FaIcon(FontAwesomeIcons.bars),
        onPressed: () {
          Navigator.of(context).push(
            SlideRoute(
              page: SideBar(),
              topDown: 0,
              leftRight: -1,
            ),
          );
        },
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          color: Colors.black,
          icon: FaIcon(
            FontAwesomeIcons.search,
          ),
          onPressed: () {
            print("pressed right");
          },
        ),
      ],
    );
  }
}
