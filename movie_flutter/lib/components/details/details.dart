import 'package:flutter/material.dart';
import 'package:movie_flutter/models/movie_ex.dart';

import 'package:movie_flutter/components/details/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}
