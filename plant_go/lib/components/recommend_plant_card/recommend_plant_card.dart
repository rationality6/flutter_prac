import 'package:flutter/material.dart';

import 'package:plant_go/components/constants.dart';

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;

  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDP,
        top: kDP / 2,
        bottom: kDP * 2.5,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(image),
            ),
            Container(
              padding: EdgeInsets.all(kDP / 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPC.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: '$country',
                            style: TextStyle(color: kPC.withOpacity(0.5))),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style:
                        Theme.of(context).textTheme.button.copyWith(color: kPC),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
