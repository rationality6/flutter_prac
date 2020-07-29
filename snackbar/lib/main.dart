import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  postAlert(context, ctx) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              MySnackBar(ctx),
              Text("hello wolrd"),
              FlatButton(
                child: Text("click me"),
                onPressed: () {
                  // Scaffold.of(ctx).showSnackBar(
                  //   SnackBar(
                  //     duration: Duration(microseconds: 1),
                  //     content: Text("Hello_world"),
                  //     action: SnackBarAction(
                  //       label: 'Action!',
                  //       onPressed: () {
                  //         // Some code to undo the change.
                  //       },
                  //     ),
                  //   ),
                  // );
                  flutterToast();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Builder(
            builder: (BuildContext ctx) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Text("snack_bar"),
                    onPressed: () {
                      // Scaffold.of(ctx).showSnackBar(
                      //   SnackBar(
                      //     duration: Duration(microseconds: 1),
                      //     content: Text("Hello_world"),
                      //   ),
                      // );

                      postAlert(context, ctx);
                    },
                    color: Colors.black45,
                  ),
                  MySnackBar(ctx),
                  Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  FlatButton(
                    child: Text("toast"),
                    onPressed: () {
                      flutterToast();
                    },
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.symmetric(
                      vertical: 50,
                      horizontal: 10,
                    ),
                    padding: EdgeInsets.all(40),
                    child: Text("foo"),
                    color: Colors.red,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 100,
                        color: Colors.blue,
                        child: Text("con0"),
                      ),
                      Container(
                        height: 100,
                        color: Colors.yellow,
                        child: Text("con1"),
                      ),
                      Container(
                        height: 100,
                        color: Colors.red,
                        child: Text("con2"),
                      ),
                      Container(
                        height: 100,
                        color: Colors.green,
                        child: Text("con3"),
                      ),
                      // Container(
                      // width: double.infinity,
                      // height: double.infinity,
                      // )
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MySnackBar extends StatefulWidget {
  final ctx;

  MySnackBar(this.ctx);

  @override
  _MySnackBarState createState() => _MySnackBarState();
}

class _MySnackBarState extends State<MySnackBar> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      child: FlatButton(
        child: Text("click me"),
        onPressed: () {
          Scaffold.of(widget.ctx).showSnackBar(
            SnackBar(
              duration: Duration(microseconds: 1),
              content: Text("Hello_world"),
              action: SnackBarAction(
                label: 'Action!',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'flutter!',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
