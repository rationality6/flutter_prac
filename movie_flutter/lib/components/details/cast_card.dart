import 'package:flutter/material.dart';
import 'package:movie_flutter/components/actor/actor.dart';

class CastCard extends StatelessWidget {
  final Map cast;

  const CastCard({Key key, this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 80,
      child: GestureDetector(
        onTap: () => {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => Actor(cast: cast)),
          )
        },
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(cast['image']),
                ),
              ),
            ),
            SizedBox(
              height: 20 / 2,
            ),
            Text(
              cast['orginalName'],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 2,
            ),
            SizedBox(
              height: 20 / 2,
            ),
            Text(
              cast['movieName'],
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
