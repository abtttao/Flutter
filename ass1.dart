
import 'package:flutter/material.dart';
import 'dart:math';

class RandomDemo extends StatefulWidget {
  @override
  _RandomDemoState createState() => _RandomDemoState();
}

class _RandomDemoState extends State<RandomDemo> {
  final input = TextEditingController();
  int num = Random().nextInt(10);
  String _textans = '';
  int times = 0;
  var comparing = 3;

  void checkans() {
    var ansuser = int.parse(input.text);
    if (ansuser == num) {
      setState(() {
        _textans = 'Correct, you win!';
        times = 3;
        comparing = 3;
      });
    } else {
      setState(() {
        times++;
        if (times != 3) {
          comparing = comparing - 1;
          if (ansuser > num) {
            _textans = '$ansuser is to  large, $comparing chance(s) left!';
          } else {
            _textans = '$ansuser is to small, $comparing chance(s) left!';
          }
        } else {
          _textans = 'Sorry, you lose. The answer is $num';
          comparing = 3;
        }
      });
    }
  }

  void replay() {
    setState(() {
      times = 0;
      _textans = '';
      num = Random().nextInt(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Guess a number game'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: 'Guess a number 0-9'),
                controller: input,
              ),
              SizedBox(height: 5),
              Text(
                '$_textans',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              OutlineButton(
                onPressed: times != 3 ? checkans : replay,
                child: Text(
                  times != 3 ? "Guess" : "Replay",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

