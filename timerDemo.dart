import 'dart:async';

import 'package:flutter/material.dart';

class TimerDemo extends StatefulWidget {
  @override
  _TimerDemoState createState() => _TimerDemoState();
}

class _TimerDemoState extends State<TimerDemo> {
  double _num = 1.00;
  int _point = 0;

  @override
  void initState() {
    super.initState();
      _num = 1.00;
  }

  void StartTime() {
    _num = 1.00;
    _point = 0;
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      setState(() {
        _num = _num - 0.01;
      });

      if (_num < 0) {
        timer.cancel();
        
        setState(() {
          _num = 0.00;
        });
      }
    });
  }

  void ClickPoint() {
    setState(() {
      _point++;
      
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Timer Demo'),
        ),
        body: Column(
          children: [
            Text(
              _num.toStringAsFixed(2),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              '$_point',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: ClickPoint,
                  child: Text('Click'),
                  color: Colors.lightGreen,
                ),
                RaisedButton(
                  onPressed: StartTime,
                  child: Text('PLAY'),
                  color: Colors.white,
                ),
              ],
            )
          ],
        ));
  }
}
