import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  final String genre;
  const GenreCard({Key key, this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        genre,
        style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
