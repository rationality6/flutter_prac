import 'package:flutter/material.dart';
import 'package:movie_flutter/components/genres/genre_button.dart';

class Genres extends StatelessWidget {
  final List<String> genres = ["액션", "범죄", "코메디", "드라마", "공포", "애니메이션"];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: genres.length,
            itemBuilder: (centext, index) => GenreButton(
                  genre: genres[index],
                )));
  }
}
