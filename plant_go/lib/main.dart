import 'package:flutter/material.dart';
import 'package:plant_go/components/constants.dart';
import 'package:plant_go/components/header.dart';
import 'package:plant_go/components/appbar.dart';
import 'package:plant_go/components/title_custom.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter(2)),
        ChangeNotifierProvider(create: (_) => User('foo', 'secret')),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'plant go',
        theme: ThemeData(
          primaryColor: kPC,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTC),
          // visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyScreen(),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarMain(),
      body: Container(
        child: Column(
          children: [
            Header(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).padding;
    double newheight = height - padding.top - padding.bottom;

    double appbarmaxheight = Scaffold.of(context).appBarMaxHeight;
    print(appbarmaxheight);

    var counterProvider = Provider.of<Counter>(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TitleCustom(
                  text: "Recommended",
                  press: () {},
                ),
                Spacer(),
                FlatButton(
                  color: kPC,
                  onPressed: () {},
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(
              left: kDP,
              top: kDP / 2,
              bottom: kDP * 2.5,
            ),
            width: size.width * 0.4,
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/image_1.png'),
                Container(
                  padding: EdgeInsets.all(kDP / 2),
                  decoration: BoxDecoration(
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
                        text: TextSpan(children: []),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (text) {},
          ),
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          RaisedButton(
            onPressed: () {
              // Validate returns true if the form is valid, otherwise false.
              if (_formKey.currentState.validate()) {
                // If the form is valid, display a snackbar. In the real world,
                // you'd often call a server or save the information in a database.

                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Submit'),
          ),
          FlatButton(
            child: Text("first_provider_page"),
            color: Colors.green,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SimpleProviderPage(),
                ),
              );
            },
          ),
          FlatButton(
            child: Text("second_provider_page"),
            color: Colors.green,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SimpleProviderPageTwo(),
                ),
              );
            },
          ),
          Text("${counterProvider.getCounter()}"),
          FlatButton(
            child: Text("count+"),
            color: Colors.green,
            onPressed: () {
              counterProvider.increment();
            },
          ),
          FlatButton(
            child: Text("count-"),
            color: Colors.green,
            onPressed: () {
              counterProvider.decrement();
            },
          ),
        ],
      ),
    );
  }
}

class SimpleProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleProviderPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${counterProvider.getCounter()}'),
            FlatButton(
              child: Text("count+"),
              color: Colors.green,
              onPressed: () {
                counterProvider.increment();
              },
            ),
            FlatButton(
              child: Text("count-"),
              color: Colors.green,
              onPressed: () {
                counterProvider.decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SimpleProviderPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleProviderPageTwo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${counterProvider.getCounter()}'),
            FlatButton(
              child: Text("count+"),
              color: Colors.green,
              onPressed: () {
                counterProvider.increment();
              },
            ),
            FlatButton(
              child: Text("count-"),
              color: Colors.green,
              onPressed: () {
                counterProvider.decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int _counter;

  Counter(this._counter);

  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  void increment() {
    _counter += 1;
    notifyListeners();
  }

  void decrement() {
    _counter -= 1;
    notifyListeners();
  }
}

class User with ChangeNotifier {
  String _name;
  String _password;

  User(
    this._name,
    this._password,
  );

  getUserName() {
    return _name;
  }

  getPassword() {
    return _password;
  }

  void changeInfo(String name, String password) {
    _name = name;
    _password = password;
    notifyListeners();
  }
}
