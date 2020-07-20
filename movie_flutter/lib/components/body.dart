import 'package:flutter/material.dart';

// componants
import 'package:movie_flutter/components/categorys/categorys.dart';
import 'package:movie_flutter/components/movie_card/movie_carousel.dart';
import 'package:movie_flutter/components/genres/genres.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Categorylist(),
          Genres(),
          SizedBox(height: 20),
          MovieCarousel(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 150),
            child: Text("안녕로봇 안늉!"),
          ),
        ],
      ),
    );
  }
}
