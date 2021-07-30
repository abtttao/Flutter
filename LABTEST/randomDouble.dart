import 'dart:math';

import 'package:flutter/material.dart';

class RandomDouble extends StatefulWidget {
  @override
  _RandomDoubleState createState() => _RandomDoubleState();
}

class _RandomDoubleState extends State<RandomDouble> {
  double _number = 0;

  void genRandom() {
    setState(() {
      _number = Random().nextDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RANDOM DOUBLE'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Random integer number'),
            Text(
            _number.toStringAsFixed(2),
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
