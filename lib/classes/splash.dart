import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {

  //是否显示广告
  bool _ishowAD = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.yellow,
      child: Stack(
        children: <Widget>[
          //根控制器

        ],
      ),
    );
  }
}