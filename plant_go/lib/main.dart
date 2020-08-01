import 'package:flutter/material.dart';
import 'package:plant_go/components/constants.dart';
import 'package:plant_go/components/header.dart';
import 'package:plant_go/components/appbar.dart';
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

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarMain(),
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
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double newheight = height - padding.top - padding.bottom;

    double appbarmaxheight = Scaffold.of(context).appBarMaxHeight;
    print(appbarmaxheight);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TitleCustom(
                  text: "Recommended",
                  press: () {},
                ),
                Spacer(),
                FlatButton(
                  color: kPC,
                  onPressed: () {},
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          Container(
              width: size.width * 0.4,
              child: Column(
                children: <Widget>[
                  Image.asset('assets/images/image_1.png'),
                  Container(
                    padding: EdgeInsets.all(kDP / 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPC.withOpacity(0.23),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
