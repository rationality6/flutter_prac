import 'package:flutter/material.dart';
import 'package:movie_flutter/models/side.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: sides.length,
          itemBuilder: (context, index) => SideButton(
            title: sides[index].title,
            route: sides[index].router,
          ),
        ),
      ),
    );
  }
}

class SideButton extends StatelessWidget {
  final String title;
  final Widget route;
  SideButton({Key key, this.route, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.black38),
        ),
        child: Text(title),
        padding: EdgeInsets.symmetric(vertical: 15),
        onPressed: () => {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => route,
            ),
          ),
        },
      ),
    );
  }
}
