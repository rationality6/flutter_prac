import 'package:flutter/material.dart';

// componants
import 'package:hello_world/components/categorys/categorys.dart';
import 'package:hello_world/components/movie_card/movie_carousel.dart';
import 'package:hello_world/components/genres/genres.dart';

// for testing
import 'package:hello_world/components/etc/random_words.dart';
import 'package:hello_world/components/etc/router_test.dart';

import 'package:hello_world/components/etc/random_lists.dart';

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
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black38),
            ),
            child: Text("to Buttons"),
            onPressed: () => {
              Navigator.of(context).push(
                _createRoute(),
              ),
            },
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black38),
            ),
            child: Text("randomLists"),
            onPressed: () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RandomLists(),
                ),
              )
            },
          ),
          Container(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text('In router'),
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RouterTest(),
                  ),
                ),
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 150),
            child: Text("안녕로봇 안늉!"),
          ),
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => RandomWords(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
