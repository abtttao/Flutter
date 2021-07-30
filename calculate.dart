import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';
  TextEditingController _number1 = TextEditingController();
  TextEditingController _number2 = TextEditingController();
  var answer = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CALCULATION'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _number1,
                decoration: InputDecoration(
                  hintText: 'Number 1',
                ),
              ),
              TextField(
                controller: _number2,
                decoration: InputDecoration(
                  hintText: 'Number 2',
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.yellow,
                child: Text('SUM'),
                onPressed: () {
                  setState(() {
                    var num1 = int.parse(_number1.text);
                    var num2 = int.parse(_number2.text);

                    answer = num1 + num2;

                    text = ('Result = $answer');
                  });
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text('POWER'),
                onPressed: () {
                  setState(() {
                    var num1 = int.parse(_number1.text);
                    var num2 = int.parse(_number2.text);

                    answer = pow(num1, num2);

                    text = ('Result = $answer');
                  });
                },
              ),
              RaisedButton(
                color: Colors.red,
                child: Text('CLEAR'),
                onPressed: () {
                  setState(() {
                    _number1.clear();
                    _number2.clear();

                    text = ('Result = 0 ');
                  });
                },
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
