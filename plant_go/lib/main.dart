import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_go/components/constants.dart';
import 'package:plant_go/components/mock_datas.dart';

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
        // textTheme: Theme.of(context).textTheme.apply(
        //       bodyColor: kTC,
        //     ),
      ),
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  AppBar buildAppBar() => AppBar(
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
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
            MockDatas(),
          ],
        ),
      ),
    );
  }
}
