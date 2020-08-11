import 'package:flutter/material.dart';
import 'package:plant_go/services/world_time.dart';

class TimeDatas extends StatefulWidget {
  @override
  _TimeDatasState createState() => _TimeDatasState();
}

class _TimeDatasState extends State<TimeDatas> {
  String _foobar;
  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      location: 'Seoul',
      url: 'Asia/Seoul',
      flag: "germany.png",
    );
    await instance.getTime();
    setState(() {
      _foobar = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$_foobar"),
    );
  }
}
