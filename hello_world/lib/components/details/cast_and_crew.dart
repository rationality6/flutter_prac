import 'package:flutter/material.dart';
import 'package:hello_world/components/details/cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;

  const CastAndCrew({Key key, this.casts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '캐스트 & 배우',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: casts.length,
                itemBuilder: (context, index) => CastCard(cast: casts[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
