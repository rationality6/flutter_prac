import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class MockDatas extends StatefulWidget {
  @override
  _MockDatasState createState() => _MockDatasState();
}

class _MockDatasState extends State<MockDatas> {
  String url = 'https://jsonplaceholder.typicode.com/todos/1';
  String _todos;

  Future<String> getData() async {
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    return data['title'];
  }

  @override
  void initState() {
    super.initState();

    // _todos = await getData();

    setState(() {
      // _todos = await getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("$_todos"),
    );
  }
}
