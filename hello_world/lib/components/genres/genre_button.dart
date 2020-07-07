import 'package:flutter/material.dart';

class GenreButton extends StatefulWidget {
  final String genre;
  const GenreButton({
    Key key,
    this.genre,
  }) : super(key: key);

  @override
  _GenreButtonState createState() => _GenreButtonState();
}

class _GenreButtonState extends State<GenreButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !(selected);
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(
              color: selected == true ? Colors.black : Colors.black26,
            ),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          widget.genre,
          style: TextStyle(
            color: selected == true
                ? Colors.black.withOpacity(1)
                : Colors.black.withOpacity(0.8),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
