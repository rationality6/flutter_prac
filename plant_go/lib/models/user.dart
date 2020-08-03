import 'package:flutter/material.dart';

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
