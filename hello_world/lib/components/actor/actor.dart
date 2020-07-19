import 'package:flutter/material.dart';

class Actor extends StatelessWidget {
  final Map cast;

  const Actor({Key key, this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                    height: size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(cast['detail_picture']),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
