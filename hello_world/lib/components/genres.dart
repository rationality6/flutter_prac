import 'package:flutter/material.dart';
import 'package:hello_world/components/genre_card.dart';

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
