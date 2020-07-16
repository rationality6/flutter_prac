import 'package:flutter/material.dart';

class RandomLists extends StatefulWidget {
  @override
  _RandomListsState createState() => _RandomListsState();
}

class _RandomListsState extends State<RandomLists> {
  // final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("randomlists"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("here"),
          ],
        ),
      ),
    );
  }
}
