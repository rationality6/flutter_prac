import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

appBarMain() {
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/menu.svg",
      ),
      onPressed: () {},
    ),
    elevation: 0,
  );
}
