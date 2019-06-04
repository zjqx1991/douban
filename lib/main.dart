import 'package:flutter/material.dart';
import 'classes/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _mainTheme,
      home: Splash(),
    );
  }
}

final ThemeData _mainTheme = ThemeData(
  primaryColor: Colors.green
);