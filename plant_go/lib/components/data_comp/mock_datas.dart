import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class MockDatas extends StatefulWidget {
  // final Map _todos = {};

  @override
  _MockDatasState createState() => _MockDatasState();
}

class _MockDatasState extends State<MockDatas> {
  String url = 'https://jsonplaceholder.typicode.com/todos/1';

  getData() async {
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    return data;
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      // final _todos = getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        // child: Text("${_todos}"),
        );
  }
}
