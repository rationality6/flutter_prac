import 'package:flutter/material.dart';

import 'package:plant_go/components/constants.dart';

import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: kDP * 3),
            child: SizedBox(
              height: size.height * 0.8,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: kDP * 3),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              padding: EdgeInsets.symmetric(
                                horizontal: kDP,
                              ),
                              icon: SvgPicture.asset(
                                  "assets/icons/back_arrow.svg"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Spacer(),
                          MiniIcon(icon: "assets/icons/sun.svg"),
                          MiniIcon(icon: "assets/icons/icon_2.svg"),
                          MiniIcon(icon: "assets/icons/icon_3.svg"),
                          MiniIcon(icon: "assets/icons/icon_4.svg"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.8,
                    width: size.width * 0.75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 60,
                          color: kPC.withOpacity(0.29),
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                        image: AssetImage("assets/images/img.png"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDP),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Angelica\n",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: kTC,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: "Russia\n",
                        style: TextStyle(
                          fontSize: 20,
                          color: kPC,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  "\$440",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: kPC),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPC,
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              )
            ],
          ),
          SizedBox(
            height: kDP * 2,
          )
        ],
      ),
    );
  }
}

class MiniIcon extends StatelessWidget {
  const MiniIcon({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDP / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBC,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 22,
            color: kPC.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
