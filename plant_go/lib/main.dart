import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_go/components/constants.dart';
import 'package:plant_go/components/data_comp/mock_datas.dart';
import 'package:plant_go/components/data_comp/time_datas.dart';
import 'package:plant_go/components/data_comp/dart_loading.dart';
import 'package:plant_go/components/data_comp/deep_data.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          onPressed: () {
            print("menu buttonpressed!");
          },
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
            // MockDatas(),
            // TimeDatas(),
            // DartLoading(),
            // DeepData(),
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
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPC,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDP),
              padding: EdgeInsets.symmetric(horizontal: kDP),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPC.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPC.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/search.svg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
