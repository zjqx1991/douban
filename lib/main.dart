import 'package:flutter/material.dart';
import 'classes/app_root.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _mainTheme,
      home: AppRoot(),
    );
  }
}

final ThemeData _mainTheme = ThemeData(
  primaryColor: Colors.green
);