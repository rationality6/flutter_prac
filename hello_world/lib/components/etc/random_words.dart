import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  RandomWords({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  int _counter = 0;

  void _incrementCounter(num) {
    setState(() {
      _counter += num;
    });
  }

  // void _timesCounter() {
  //   setState(() {
  //     _counter *= 9;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return Center(
      child: Column(
        children: [
          Text(
            wordPair.asPascalCase,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("1"),
                  onPressed: () {
                    _incrementCounter(1);
                  }),
              RaisedButton(
                  child: Text("2"),
                  onPressed: () {
                    _incrementCounter(2);
                  }),
              RaisedButton(
                child: Text("3"),
                onPressed: () {
                  _incrementCounter(3);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("4"),
                  onPressed: () {
                    _incrementCounter(4);
                  }),
              RaisedButton(
                  child: Text("5"),
                  onPressed: () {
                    _incrementCounter(5);
                  }),
              RaisedButton(
                child: Text("6"),
                onPressed: () {
                  _incrementCounter(6);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
