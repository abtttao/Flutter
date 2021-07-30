
import 'package:flutter/material.dart';
import 'dart:async';

class IndicatorDemo extends StatefulWidget {
  @override
  _IndicatorDemoState createState() => _IndicatorDemoState();
}

class _IndicatorDemoState extends State<IndicatorDemo> {
  bool isActive = false;
  Timer timer;
  Widget showCPI() {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: Colors.red,
      ),
    );
  }

  Widget showWidget() {
    return Center(
      child: Text(
        'Click a button below',
        style: TextStyle(fontSize: 17),
      ),
    );
  }

  void start() {
    if (isActive) {
      timer = Timer(Duration(seconds: 5), () {
        setState(() {
          isActive = !isActive;
        });
      });
    } else {
      timer.cancel();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isActive ? showCPI() : showWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isActive = !isActive;
          });
          start();
        },
        child: Icon(isActive ? Icons.stop : Icons.refresh),
      ),
    );
  }
}
