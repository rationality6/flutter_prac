import 'package:flutter/material.dart';
// models
import 'package:hello_world/models/movie_ex.dart';
// components
import 'package:hello_world/components/details/backdrop_and_rating.dart';
import 'package:hello_world/components/details/title_text.dart';
import 'package:hello_world/components/details/genres.dart';
import 'package:hello_world/components/details/cast_and_crew.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({
    Key key,
    this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: 10 / 2),
          TitleText(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20 / 2,
              horizontal: 20,
            ),
            child: Text(
              '줄거리',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
