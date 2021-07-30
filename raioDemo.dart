import 'package:flutter/material.dart';

class RaioDemo extends StatefulWidget {
  @override
  _RaioDemoState createState() => _RaioDemoState();
}

class _RaioDemoState extends State<RaioDemo> {
  int _gValue = 0;

  void changeRaio(int value) {
    setState(() {
      _gValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raio Button Demo'),
      ),
      body: Row(
        children: [
          Radio(value: 0, groupValue: _gValue, onChanged: changeRaio),
          Text('Apple'),
          Radio(value: 1, groupValue: _gValue, onChanged: changeRaio),
          Text('Banana'),
        ],
      ),
    );
  }
}
