import 'package:flutter/material.dart';
import 'package:gasolinera_puma/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  BuildContext? myGlobalContext;
  @override
  Widget build(BuildContext context) {
    myGlobalContext = context;
    return MaterialApp(
      title: 'Mi aplicación',
      home: login(),
    );
  }
}
