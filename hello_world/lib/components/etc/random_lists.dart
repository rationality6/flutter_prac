import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomLists extends StatefulWidget {
  @override
  _RandomListsState createState() => _RandomListsState();
}

class _RandomListsState extends State<RandomLists> {
  final _suggestions = <WordPair>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  final _liked = Set<WordPair>();

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        final alreadySaved = _liked.contains(_suggestions[index]);
        return ListTile(
          title: Text(
            _suggestions[index].asPascalCase,
            style: _biggerFont,
          ),
          trailing: Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: alreadySaved ? Colors.red : null,
          ),
          onTap: () {
            setState(() {
              if (alreadySaved) {
                _liked.remove(_suggestions[index]);
              } else {
                _liked.add(_suggestions[index]);
              }
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double totalHeightOfHalf = (size.height / 2) - 50;
    print(totalHeightOfHalf);

    return Scaffold(
      appBar: AppBar(
        title: Text("randomlists"),
      ),
      body: Column(
        children: [
          Container(
            height: totalHeightOfHalf,
            child: _buildSuggestions(),
          ),
          Container(
            height: totalHeightOfHalf,
            child: _buildSuggestions(),
          ),
        ],
      ),
    );
  }
}
