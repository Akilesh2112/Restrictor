import 'package:flutter/material.dart';
import 'package:albatross/pages/home.dart';
import 'package:albatross/pages/clock.dart';
import 'package:albatross/pages/appUsage.dart';

//import 'package:albatross/pages/test.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/app-selection': (context) => ClockDemo(),
      '/app-usage': (context) => MyApp(),
      //'/test': (context) => Test(),
    },
  ));
}