import 'dart:math';

import 'package:flutter/material.dart';

class GuessNumberGame extends StatefulWidget {
  @override
  _GuessNumberGameState createState() => _GuessNumberGameState();
}

class _GuessNumberGameState extends State<GuessNumberGame> {
  String _answer = '';
  final _inputnumber = TextEditingController();
  int number = 0;
  int change = 3;
  int randomnumber = Random().nextInt(10);

  void geessnumber() {
    setState(() {
      var inputnumber = int.parse(_inputnumber.text);
      if (inputnumber == randomnumber) {
        _answer = 'Correct, You Win ';
         change = 3;
      } else if (change < 0) {
        _answer = 'Sorry,  You lose the answer  is $randomnumber';
        change = 3;
      } else if (inputnumber > randomnumber) {
        change = change - 1;
        _answer = '$inputnumber is biger , $change chance(s) left';
      } else if (inputnumber < randomnumber) {
        change = change - 1;
        _answer = '$inputnumber is small , $change chance(s) left';
      }
    });
  }

  void replay() {
    setState(() {
      _answer = '';
      randomnumber = Random().nextInt(10);
      geessnumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guess A Number Game'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _inputnumber,
            decoration: InputDecoration(hintText: 'Guess A Number 0-9'),
          ),
          Text('$_answer'),
          OutlineButton(
            onPressed: change <= 0 ? replay : geessnumber,
            child: Text(change <= 0 ? 'REPLAY' : 'GUESS'),
          )
        ],
      ),
    );
  }
}
