import 'package:flutter/material.dart';

import 'package:movie_flutter/components/etc/router_test.dart';
import 'package:movie_flutter/components/etc/random_words.dart';
import 'package:movie_flutter/components/etc/random_lists.dart';

class Side {
  final String title;
  final Widget router;

  Side({this.title, this.router});
}

List<Side> sides = [
  Side(title: "RandomWords", router: RandomWords()),
  Side(title: "RandomLists", router: RandomLists()),
  Side(title: "Router test", router: RouterTest()),
];

List<String> sides01 = ["home", 'back', 'movies', 'pracs'];
