import 'package:flutter/material.dart';
import 'dart:async';

/*
* 倒计时Widget
*/
class RevanCountDown extends StatefulWidget {
  ///倒计时结束回调
  final int seconds;
  final countDownFinishCallBack;
  final onClickCallBack;

  RevanCountDown({
    Key key,
    @required this.seconds,
    @required this.countDownFinishCallBack,
    this.onClickCallBack
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RevanCountDownState();
  }
}

class _RevanCountDownState extends State<RevanCountDown> {

  //倒计时时间
  int _seconds;
  //定时器
  Timer _timer;

  //开始倒计时
  void _startTimer() {
    _timer = Timer.periodic(
        Duration(seconds: 1),
        (timer){
          setState(() {
            if (_seconds <= 1) {
              widget.countDownFinishCallBack();
              _cancelTimer();
              return;
            }
            print(_seconds);
            _seconds--;
          });
        }
    );
  }

  //取消倒计时的定时器
  void _cancelTimer() {
    _timer?.cancel();
  }
  
  @override
  void initState() {
    super.initState();
    _seconds = widget.seconds;
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    _cancelTimer();
  }

  void _onClickPressed() {
    _cancelTimer();
    widget.onClickCallBack();
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: _onClickPressed,
        child: Text(
          '$_seconds',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0
          ),
        )
    );
  }
}