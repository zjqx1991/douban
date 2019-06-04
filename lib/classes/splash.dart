import 'package:flutter/material.dart';
import '../common/revan_constant/revan_constant.dart';
import '../common/revan_image_name/revan_image_name.dart';
import '../common/revan_screen/revan_screen.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashState();
  }
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  //1、圆形图像
                  Align(
                    //alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              RevanImageName.imageName(RevanConstant.ASSETS_IMG_SPLASH, 'splash')
                          ),
                          backgroundColor: Colors.white,
                          radius: RevanScreen.screenW(context) * 0.3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Text(
                            '落花有意随流水,流水无心恋落花',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //2、豆
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            RevanImageName.imageName(
                                RevanConstant.ASSETS_IMG_SPLASH,
                                'dou_icon'
                            ),
                            width: 50.0,
                            height: 50.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Hi,豆芽',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40,)
                    ],
                  )

                ],
              ),
            )
        ),
      ),
    );
  }
}