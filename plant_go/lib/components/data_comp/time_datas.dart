import 'package:flutter/material.dart';
import 'package:plant_go/services/world_time.dart';

class TimeDatas extends StatefulWidget {
  @override
  _TimeDatasState createState() => _TimeDatasState();
}

class _TimeDatasState extends State<TimeDatas> {
  void setupWorldTime() {
    WorldTime instance = WorldTime(
      location: 'Seoul',
      url: 'Asia/Seoul',
      flag: "germany.png",
    );
    instance.getTime();
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("foo"),
    );
  }
}
