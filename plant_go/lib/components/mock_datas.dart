import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MockDatas extends StatefulWidget {
  @override
  _MockDatasState createState() => _MockDatasState();
}

class _MockDatasState extends State<MockDatas> {
  String url = 'https://jsonplaceholder.typicode.com/todos';

  void getData() async {
    Response response = await get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Container(
      child: Text("foo data"),
    );
  }
}
