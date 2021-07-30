import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumber extends StatefulWidget {
  @override
  _RandomNumberState createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  int _number = 0;

  void genRandom() {
    setState(() {
      _number = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RANDOM NUMBER'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Random integer number'),
            Text(
              '$_number',
              style: TextStyle(fontSize: 40),
            ),
            RaisedButton(
              onPressed: genRandom,
              child: Text('GENERATE'),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
