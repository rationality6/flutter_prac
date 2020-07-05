import 'package:flutter/material.dart';
import 'package:hello_world/components/categorys.dart';
import 'package:hello_world/components/my_card.dart';

import 'package:hello_world/components/random_words.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Categorylist(), Genres(), MyCard()],
    );
  }
}

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = ["액션", "범죄", "코메디", "드라마", "공포", "애니메이션"];
    return Container(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: genres.length,
            itemBuilder: (centext, index) => GenreCard(genre: genres[index])));
  }
}

class GenreCard extends StatelessWidget {
  final String genre;
  const GenreCard({Key key, this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Text(
        genre,
      ),
    );
  }
}
