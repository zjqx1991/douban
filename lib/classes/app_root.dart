import 'package:flutter/material.dart';
import 'root_page.dart';
import 'splash.dart';
import '../common/revan_count_down/revan_count_down.dart';

class AppRoot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppRootState();
  }
}

class _AppRootState extends State<AppRoot> {

  //是否显示广告
  bool _isShowAd = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        //1、根Widget
        Offstage(
          child: RootPage(),
          offstage: _isShowAd,
        ),
        //2、广告
        Offstage(
          child: Splash(),
          offstage: !_isShowAd,
        ),
        //3、倒计时
        Offstage(
          offstage: !_isShowAd,
          child: SafeArea(
              child: Align(
                alignment: Alignment(0.9, -1.0),
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                  child: RevanCountDown(countDownFinishCallBack: (){
                    print('倒计时结束');
                    setState(() {
                      _isShowAd = false;
                    });
                  }),
                ),
              )
          ),
        )

      ],
    );
  }
}

