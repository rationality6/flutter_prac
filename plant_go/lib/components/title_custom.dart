import 'package:flutter/material.dart';
import 'package:plant_go/components/constants.dart';

class TitleCustom extends StatelessWidget {
  final text;
  TitleCustom(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDP / 4),
            child: Text(
              '$text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDP / 4),
              height: 7,
              color: kPC.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
