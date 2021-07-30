import 'dart:async';
import 'package:flutter/material.dart';

class TimerDemo extends StatefulWidget {
  @override
  _TimerDemoState createState() => _TimerDemoState();
}

class _TimerDemoState extends State<TimerDemo> {
  Timer timer;
  int minutes = 0, hours = 0;
  double count = 0;
  bool isActive = false;
  void genStart() {
    // For every second
    isActive = !isActive;
    if (isActive) {
      timer = Timer.periodic(Duration(milliseconds: 1), (timer) {
        // update counter
        setState(() {
          count += 0.01;
          if ((count / 10).toStringAsFixed(2) == '60.00') {
            count = 0.00;
            minutes++;
          }
          if (minutes == 60) {
            minutes = 0;
            hours++;
          }
        });
      });
    } else {
      timer.cancel();
    }
  }

  void reset() {
    if (isActive) {
      isActive = !isActive;
    } else {
      isActive = isActive;
    }
    timer.cancel();
    setState(() {
      count = 0.00;
      minutes = 0;
      hours = 0;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stopwatch"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              '$hours:$minutes:${(count / 10).toStringAsFixed(2)}',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            RaisedButton(
              color: Colors.lightGreen[400],
              onPressed: genStart,
              child: Row(
                children: [
                  Text(
                      !isActive ? 'start'.toUpperCase() : 'pause'.toUpperCase(),
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            OutlineButton(
              onPressed: reset,
              child: Row(
                children: [
                  Text('reset'.toUpperCase(),
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

