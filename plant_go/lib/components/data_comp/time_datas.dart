import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class TimeDatas extends StatefulWidget {
  @override
  _TimeDatasState createState() => _TimeDatasState();
}

class _TimeDatasState extends State<TimeDatas> {
  final String urlSeoul = "http://worldtimeapi.org/api/timezone/Asia/Seoul";
  void getTime() async {
    Response response = await get(urlSeoul);
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    // print(datetime);
    // print(offset);

    DateTime now = DateTime.parse(datetime);

    print(now);
    // now = now.add(Duration(hours: int.parse(offset)));
    now = now.add(Duration(hours: 24));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
