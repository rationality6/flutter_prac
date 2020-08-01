import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_go/components/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_go/components/header.dart';

import 'package:plant_go/components/title_custom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'plant go',
      theme: ThemeData(
        primaryColor: kPC,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTC),
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  AppBar buildAppBar() => AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
          onPressed: () {},
        ),
        elevation: 0,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Container(
        child: Column(
          children: [
            Header(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double newheight = height - padding.top - padding.bottom;

    double appbarmaxheight = Scaffold.of(context).appBarMaxHeight;
    print(appbarmaxheight);
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitleCustom("Recommended"),
              Spacer(),
              TitleCustom("Recommended"),
            ],
          )
        ],
      ),
    );
  }
}
