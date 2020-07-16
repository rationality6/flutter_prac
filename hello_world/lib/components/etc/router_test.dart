import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:hello_world/components/etc/sample_page.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  final double top_down;
  final double left_right;
  SlideRightRoute({this.page, this.top_down, this.left_right})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: new Offset(left_right, top_down),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class RouterTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('routerTest'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("RightMaterial"),
              onPressed: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SamplePage(),
                  ),
                ),
              },
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("Right"),
              onPressed: () => {
                Navigator.of(context).push(
                  SlideRightRoute(
                    page: SamplePage(),
                    top_down: 0,
                    left_right: 1,
                  ),
                ),
              },
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("left"),
              onPressed: () => {
                Navigator.of(context).push(
                  SlideRightRoute(
                    page: SamplePage(),
                    top_down: 0,
                    left_right: -1,
                  ),
                ),
              },
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("Top"),
              onPressed: () => {
                Navigator.of(context).push(
                  SlideRightRoute(
                    page: SamplePage(),
                    top_down: -1,
                    left_right: 0,
                  ),
                ),
              },
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("Down"),
              onPressed: () => {
                Navigator.of(context).push(
                  SlideRightRoute(
                    page: SamplePage(),
                    top_down: 1,
                    left_right: 0,
                  ),
                ),
              },
            ),
            FlatButton(
              child: Text("Back"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
