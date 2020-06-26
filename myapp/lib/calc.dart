// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Calculator',
//         home: Scaffold(
//             appBar: AppBar(title: Text('Simple Calculator')),
//             body: Column(children: [
//               Row(children: [Text("foo", style: TextStyle(fontSize: 100.0))])
//             ])));
//   }
// }

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int counter0 = 0;
//   int counter1 = 0;

//   void increaseCounter() {
//     // 버튼을 누르면 counter 값을 증가시킴
//     setState(() {
//       counter1 += 1;
//     });
//   }

//   void decreaseCounter(target) {
//     // 버튼을 누르면 counter 값을 감소시킴
//     setState(() {
//       target -= 1;
//     });
//   }

//   void timesCounter() {
//     setState(() {
//       counter0 *= 2;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "첫 플러터 앱",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("내 플러터 앱",0  ),)
//         body: Container(
//           padding: const EdgeInsets.all(16.0), // 전체적으로 16씩 패딩을 주었음.
//           child: Column(
//             // 세로로 위젯을 배치
//             children: <Widget>[
//               Tex,   "$count0r0",t
//                 style: TextStyle(fontSize: 160.0),
//               ),
//               Text(
//                 "$counter1",
//                 style: TextStyle(fontSize: 160.0),
//               ),
//               Row(
//                 // 가로로 위젯을 배치, 안에 버튼 2개가 들어가 있음.
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceEvenly, // 위젯끼리 같은 공간만큼 띄움
//                 children: <Widget>[
//                   RaisedButton(
//                     child: Text(
//                       "Add",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.red, // 버튼 색은 빨강색으로
//                     onPressed: () {
//                       // 버튼을 누르면 안에 있는 함수를 실행
//                       increaseCounter();
//                     },
//                   ),
//                   RaisedButton(
//                     child: Text(
//                       "Subtract",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.blue, // 버튼 색은 파란색으로
//                     onPressed: () {
//                       // 버튼을 누르면 안에 있는 함수를 실행
//                       decreaseCounter(counter0);
//                     },
//                   ),
//                   RaisedButton(
//                       child: Text(
//                         "Times",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       color: Colors.amber,
//                       onPressed: () {
//                         timesCounter();
//                       }),
//                 ],
//               ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   RaisedButton(onPressed: () => increaseCounter()),
//                   RaisedButton(onPressed: () => decreaseCounter(counter1)),
//                   RaisedButton(onPressed: () => increaseCounter())
//                 ],
//               ),

//               Row(
//                 // 가로로 위젯을 배치, 안에 버튼 2개가 들어가 있음.
//                 mainAxisAlignment:
//                     MainAxisAlignment.spaceEvenly, // 위젯끼리 같은 공간만큼 띄움
//                 children: <Widget>[
//                   RaisedButton(
//                     child: Text(
//                       "Add",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.red, // 버튼 색은 빨강색으로
//                     onPressed: () {
//                       // 버튼을 누르면 안에 있는 함수를 실행
//                       increaseCounter();
//                     },
//                   ),
//                   RaisedButton(
//                     child: Text(
//                       "Subtract",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     color: Colors.blue, // 버튼 색은 파란색으로
//                     onPressed: () {
//                       // 버튼을 누르면 안에 있는 함수를 실행
//                       decreaseCounter(counter0);
//                     },
//                   ),
//                   RaisedButton(
//                       child: Text(
//                         "Times",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       color: Colors.amber,
//                       onPressed: () {
//                         timesCounter();
//                       }),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.red,
//         // This makes the visual density adapt to the platform that you run
//         // the app on. For desktop platforms, the controls will be smaller and
//         // closer together (more dense) than on mobile platforms.
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: '플러터 안늉융'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 1;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter *= 5;
//     });
//   }

//   void _decrementCounter() {
//     setState(() {
//       _counter -= 5;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     var imageUrl = "https://images.pexels.com/photos/912110/pexels-photo-912110.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               '당신은 방금 클릭을 하였습니다.',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.

//     );
//   }
// }


