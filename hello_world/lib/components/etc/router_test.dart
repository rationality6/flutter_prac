import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:hello_world/components/etc/sample_page.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  final double topDown;
  final double leftRight;
  SlideRightRoute({this.page, this.topDown, this.leftRight})
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
              begin: new Offset(leftRight, topDown),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  ScaleRoute({this.page})
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
              ScaleTransition(
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.fastOutSlowIn,
              ),
            ),
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
                    topDown: 0,
                    leftRight: 1,
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
                    topDown: 0,
                    leftRight: -1,
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
                    topDown: -1,
                    leftRight: 0,
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
                    topDown: 1,
                    leftRight: 0,
                  ),
                ),
              },
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("ScaleBigRoute"),
              onPressed: () => {
                Navigator.of(context).push(
                  ScaleRoute(
                    page: SamplePage(),
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
