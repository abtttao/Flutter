import 'dart:ui';

import 'package:flutter/material.dart';

class ExamOfline extends StatefulWidget {
  @override
  _ExamOflineState createState() => _ExamOflineState();
}

class _ExamOflineState extends State<ExamOfline> {
  @override
  void start() {
    setState(() {
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Question1()),
            );
          },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offline Multiple-choice exam'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/Questions.png'),
          RaisedButton(
            onPressed: start,
            color: Colors.blue,
            child: Text(
              'START',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Descripton ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("1. You have time to do question 1 min/question."),
              Text("2. The exam have 3 question and 4 choice."),
              Text("3. You can not go back to previous questions.")
            ],
          )
        ],
      ),
    );
  }
}

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  @override
   String answer = '';
    final List questions = [
    {
      'question': 'What is result of  1+1',
      'ch1': '1',
      'ch2': '2',
      'ch3': '3',
      'ch4': '4',
    },
     {
      'question': 'What is result of  4/2',
      'ch1': '2',
      'ch2': '4',
      'ch3': '6',
      'ch4': '8',
    },
     {
      'question': 'What is result of  7*5',
      'ch1': '20',
      'ch2': '38',
      'ch3': '35',
      'ch4': '42',
    },
    
  ];
  int _gValue = 0;
  void Next() {
    setState(() {
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Question1()),
            );
          },
    );
  }

  void changeRaio(int value) {
    setState(() {
      _gValue = value;
    });
  }
  void checkanswer() {
    setState(() {
      if (_gValue == _gValue) {
        answer = 'Correct!';
      } else {
        answer = 'Wrong!';
      }
    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offline Multiple-choice exam'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TIME COUNT ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '00.22',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
          ),
            SizedBox(
            height: 40,
          ),
          Image.asset('assets/images/ques.png'),
            SizedBox(
            height: 40,
          ),
          Text(
            'What is result of  7*5',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: 0, groupValue: _gValue, onChanged: changeRaio),
              Text('20'),
              Radio(value: 1, groupValue: _gValue, onChanged: changeRaio),
              Text('38'),
              Radio(value: 2, groupValue: _gValue, onChanged: changeRaio),
              Text('35'),
              Radio(value: 3, groupValue: _gValue, onChanged: changeRaio),
              Text('42'),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: Next,
            color: Colors.blue,
            child: Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionScore extends StatefulWidget {
  @override
  _QuestionScoreState createState() => _QuestionScoreState();
}

class _QuestionScoreState extends State<QuestionScore> {
  @override
  void replay() {
    setState(() {
       Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Question1()),
            );
          },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offline Multiple-choice exam'),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/time.png'),
          SizedBox(
            height: 40,
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text(
                'YOUR SCORE',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10,),
              Text(
                '3',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ],
            
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: replay,
            color: Colors.green,
            child: Text(
              'REPLAY',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
        ],
      ),
    );
  }
}
