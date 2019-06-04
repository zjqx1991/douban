import 'package:flutter/material.dart';

class RootPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Text('RootPage'),
      ),
    );
  }
  
}