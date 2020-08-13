import 'package:flutter/material.dart';
import 'package:plant_go/components/%20title/title_custom.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

// scaffolds
import 'package:plant_go/components/header.dart';
import 'package:plant_go/components/appbar.dart';

// components
// import 'package:plant_go/components/form_test_page.dart';
import 'package:plant_go/components/recommend_plant_card/recommend_plant_cards.dart';
import 'package:plant_go/components/featured_plants.dart';

// models
import 'package:plant_go/components/constants.dart';
import 'package:plant_go/models/counter.dart';
import 'package:plant_go/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Expanded(
              child: SingleChildScrollView(
                child: Body(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: kDP * 2,
          right: kDP * 2,
          bottom: kDP,
        ),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPC.withOpacity(0.38),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TitleCustomWithButton(text: '추천하는 식물'),
          RecommendPlantCards(),
          TitleCustomWithButton(text: '이달의 식물'),
          FeaturedPlants(),
          SizedBox(height: 20),
          TitleCustomWithButton(text: '가장 많이 팔린 식물'),
          RecommendPlantCards(),
        ],
      ),
    );
  }
}
