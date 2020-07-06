import 'package:flutter/material.dart';
import 'package:hello_world/components/categorys.dart';
import 'package:hello_world/components/my_card.dart';

import 'package:hello_world/models/movie_ex.dart';
import 'package:hello_world/components/random_words.dart';
import 'package:hello_world/components/genres.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Categorylist(), Genres(), MovieCarousel()],
    );
  }
}

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) => MovieCard(movie: movies[index])),
      ),
    );
  }
}

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(movie.poster),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(movie.title),
          )
        ],
      ),
    );
  }
}
