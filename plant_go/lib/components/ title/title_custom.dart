import 'package:flutter/material.dart';
import 'package:plant_go/components/constants.dart';

class TitleCustomWithButton extends StatelessWidget {
  TitleCustomWithButton({Key key, this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TitleCustom(
            text: text,
            press: () {},
          ),
          Spacer(),
          FlatButton(
            color: kPC,
            onPressed: () {},
            child: Text(
              "더 보기",
              style: TextStyle(color: Colors.white),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleCustom extends StatelessWidget {
  final Function press;
  final String text;

  TitleCustom({Key key, this.text, this.press}) : super(key: key);

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
