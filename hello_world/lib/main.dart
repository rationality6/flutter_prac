import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demooo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RandomWords(title: 'Flutter Demo Homeee'),
    );
  }
}

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

  void _timesCounter() {
    setState(() {
      _counter *= 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(wordPair.asPascalCase),
              Text('$_counter'),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    }),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    }),
              ])
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _timesCounter();
        },
        // child: Icon(Icons.add),
        child: Text("*9"),
      ),
    );
  }
}
