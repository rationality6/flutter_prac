import 'package:flutter/material.dart';
import 'package:plant_go/components/%20title/title_custom.dart';
import 'package:provider/provider.dart';

// scaffolds
import 'package:plant_go/components/header.dart';
import 'package:plant_go/components/appbar.dart';

// components
// import 'package:plant_go/components/form_test_page.dart';
import 'package:plant_go/components/recommend_plant_card/recommend_plant_cards.dart';

// models
import 'package:plant_go/components/constants.dart';
import 'package:plant_go/models/counter.dart';
import 'package:plant_go/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter(2)),
        ChangeNotifierProvider(create: (_) => Users()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'plant go',
        theme: ThemeData(
          primaryColor: kPC,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTC),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyScreen(),
      ),
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
            // FormTestPage(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double newheight = height - padding.top - padding.bottom;
    print(newheight);

    double appbarmaxheight = Scaffold.of(context).appBarMaxHeight;
    print(appbarmaxheight);

    return Container(
      child: Column(
        children: [
          TitleCustomWithButton(text: '추천하는 식물'),
          RecommendPlantCards(),
          TitleCustomWithButton(text: '이달의 식물'),
        ],
      ),
    );
  }
}
