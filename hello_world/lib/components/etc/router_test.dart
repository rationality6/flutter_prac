import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:hello_world/components/etc/sample_page.dart';
import 'package:hello_world/components/etc/router_directions.dart';

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
                  SlideRoute(
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
                  SlideRoute(
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
                  SlideRoute(
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
                  SlideRoute(
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.black38),
              ),
              child: Text("NavRoute"),
              onPressed: () => {
                Navigator.of(context).push(
                  NavRoute(
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
