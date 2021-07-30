import 'dart:math';

import 'package:flutter/material.dart';

class RandomDemo extends StatefulWidget {
  @override
  _RandomDemoState createState() => _RandomDemoState();
}

class _RandomDemoState extends State<RandomDemo> {
  int _num = 0;

  void buildRandomNumber() {
    setState(() {
      _num = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random number'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Random integer'),
            Text(
              '$_num',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: buildRandomNumber,
              child: Text('GENERATE'),
              color: Colors.lightBlue,
            )
          ],
        ),
      ),
    );
  }
}
