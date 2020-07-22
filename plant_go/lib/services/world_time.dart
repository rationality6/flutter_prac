import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;

  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    var endpoint = 'http://worldtimeapi.org/api/timezone/$url';
    Response response = await get(endpoint);

    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(datetime);

    now = now.add(Duration(hours: int.parse(offset)));
    time = now.toString();
  }
}
