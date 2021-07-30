import 'dart:math';

import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  int _gValue = 0;
  String answer = '';
  int randomnumber;
  var imageshow = 'assets/images/ace.png';

  void changeRaio(int value) {
    setState(() {
      _gValue = value;
    });
  }

  void randompicture() {
    setState(() {
      randomnumber = Random().nextInt(3);
      if (randomnumber == 0) {
        imageshow = 'assets/images/ace.png';
      } else if (randomnumber == 1) {
        imageshow = 'assets/images/card2.png';
      } else {
        imageshow = 'assets/images/card3.png';
      }
    });
  }

  void checkanswer() {
    setState(() {
      if (_gValue == randomnumber) {
        answer = 'Correct!';
      } else {
        answer = 'Wrong!';
      }
    });
    showAlert();
  }

  Future showAlert() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(
              'Result',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            content: Text(answer));
      },
    );
  }

  void replay() {
    randompicture();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Game'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(imageshow),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'What is the Card',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: 0, groupValue: _gValue, onChanged: changeRaio),
              Text('Ace'),
              Radio(value: 1, groupValue: _gValue, onChanged: changeRaio),
              Text('Two'),
              Radio(value: 2, groupValue: _gValue, onChanged: changeRaio),
              Text('Three'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: checkanswer,
                child: Text('ANSWER',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                color: Colors.blue,
              ),
              OutlineButton(
                onPressed: replay,
                child: Text('REPLAY',
                    style: TextStyle(
                      color: Colors.red,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
