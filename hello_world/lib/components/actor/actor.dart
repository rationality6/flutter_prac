import 'package:flutter/material.dart';

class Actor extends StatelessWidget {
  final Map cast;

  const Actor({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("foo"),
                Text("foo"),
                Text("foo"),
                Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(cast[2]),
                  ),
                ))
              ],
            ),
            Text("foo"),
            Text("foo"),
            Text("foo"),
          ],
        ),
      ),
    );
  }
}
