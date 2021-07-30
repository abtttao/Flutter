import 'dart:async';
import 'package:flutter/material.dart';

class TimerDemo2 extends StatefulWidget {
  @override
  _TimerDemoState createState() => _TimerDemoState();
}

class _TimerDemoState extends State<TimerDemo2> {
  final _hour = TextEditingController();
  final _min = TextEditingController();
  final _second = TextEditingController();
  static const duration = const Duration(seconds: 1);
  int secondsPassed = 1;
  bool isActive = false;
  Timer timer;

  int seconds = 5, minutes = 1, hours = 0;
  @override
  void initState() {
    super.initState();
    if (timer == null)
      timer = Timer.periodic(duration, (Timer t) {
        genStart();
      });
  }
  void genStart() {
    if (isActive) {
      setState(() {
        if (seconds == 0 && minutes == 0 && hours == 0) {
          timer.cancel();
          isActive = !isActive;
        } else {
          if (seconds == 0 && minutes != 0) {
            seconds = secondsPassed * 59;
            minutes--;
          } else if (seconds == 0 && minutes == 0 && hours != 0) {
            minutes = secondsPassed * 59;
            hours--;
          } else {
            seconds--;
          }
        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countdown Timer"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Row(
                children: [
                  new Flexible(
                    child: new TextField(
                      textAlign: TextAlign.center,
                      autofocus: true,
                      enabled: !isActive,
                      controller: _hour..text = '$hours',
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        helperText: 'hour',
                        helperStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                  SizedBox(width: 15),
                  new Flexible(
                    child: new TextField(
                      textAlign: TextAlign.center,
                      autofocus: true,
                      enabled: !isActive,
                      controller: _min..text = '$minutes',
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        helperText: 'minute',
                        helperStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                  SizedBox(width: 15),
                  new Flexible(
                    child: new TextField(
                      textAlign: TextAlign.center,
                      autofocus: true,
                      enabled: !isActive,
                      controller: _second..text = '$seconds',
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        helperText: 'second',
                        helperStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      style: TextStyle(fontSize: 23),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            ButtonTheme(
                minWidth: 120.0,
                height: 45.0,
                child: RaisedButton(
                  color: Colors.lightGreen[400],
                  onPressed: () {
                    setState(() {
                      isActive = !isActive;
                      hours = int.parse(_hour.text);
                      minutes = int.parse(_min.text);
                      seconds = int.parse(_second.text);
                    });
                  },
                  child: Text(
                    !isActive ? 'START' : 'STOP',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
