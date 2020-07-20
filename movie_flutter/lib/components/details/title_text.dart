import 'package:flutter/material.dart';
import 'package:movie_flutter/models/movie_ex.dart';

class TitleText extends StatelessWidget {
  final Movie movie;
  const TitleText({
    Key key,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 20 / 2),
                Row(
                  children: [
                    Text(
                      "${movie.year}년",
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(
                      width: 20 / 2,
                    ),
                    Text(
                      "13세이상",
                      style: TextStyle(color: Colors.black38),
                    ),
                    SizedBox(
                      width: 20 / 2,
                    ),
                    Text(
                      "2시간 32분",
                      style: TextStyle(color: Colors.black38),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FlatButton(
              color: Colors.red[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
