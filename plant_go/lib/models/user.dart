import 'package:flutter/material.dart';

class User with ChangeNotifier {
  String name;
  String password;

  User({
    this.name,
    this.password,
  });

  getUserName() {
    return name;
  }

  getPassword() {
    return password;
  }

  void changeInfo(String name, String password) {
    name = name;
    password = password;
    notifyListeners();
  }
}

class Users with ChangeNotifier {
  List<User> users;

  List<User> getUserList() => users;

  updateUserList(name, password) {
    users.add(
      User(
        name: name,
        password: password,
      ),
    );
  }

  notifyListeners();
}
