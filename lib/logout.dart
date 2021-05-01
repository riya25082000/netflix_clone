
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home_Screen.dart';
import 'package:netflix_clone/screens/screens.dart';
import 'package:provider/provider.dart';
import 'authentication.dart';


import 'home.dart';
import 'login.dart';

class LogOutScreen extends StatefulWidget {
  static const routeName = '/logout';
  const LogOutScreen({Key key}) : super(key: key);
  @override
  _LogOutScreenState createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  Timer _timer;

  final GlobalKey<FormState> _formKey = GlobalKey();


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('My Profile'),

      actions: <Widget>[
        FlatButton(
          child: Row(
            children: <Widget>[
              Text('Logout'),
              Icon(Icons.person)
            ],
          ),
          textColor: Colors.white,
          onPressed: () {
            logoutUser();
          },
        )
      ],
    ),
  );
}

  void logoutUser() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  //  _timer.cancel();
  }
}
