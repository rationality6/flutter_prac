import 'package:flutter/material.dart';
import 'package:hello_world/models/movie_ex.dart';
import 'package:hello_world/components/genres/genre_button.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20 / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15),
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenreButton(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
