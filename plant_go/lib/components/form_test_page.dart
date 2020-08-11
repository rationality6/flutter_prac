import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// models
import 'package:plant_go/models/counter.dart';
// import 'package:plant_go/models/user.dart';

class FormTestPage extends StatefulWidget {
  @override
  _FormTestPageState createState() => _FormTestPageState();
}

class _FormTestPageState extends State<FormTestPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var counterProvider = Provider.of<Counter>(context);
    return Column(
      children: <Widget>[
        Container(
          child: Text("foooo"),
          padding: EdgeInsets.symmetric(horizontal: 20),
        ),
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Enter a search term'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter your username'),
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value.isEmpty) {
                    return '뭐든 입력해주세용';
                  }
                  return null;
                },
                onChanged: (text) {},
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value.isEmpty) {
                    return '뭐든 입력해주세용';
                  }
                  return null;
                },
              ),
            ],
          ),
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
