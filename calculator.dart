import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String text = '';
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  var answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // SizedBox(height: 50,),
        Padding(padding: EdgeInsets.all(20)),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _num1,
                  decoration: InputDecoration(
                    hintText: 'First',
                  ),
                ),
              ),
              Expanded(child: Icon(Icons.add)),
              Expanded(
                child: TextField(
                  controller: _num2,
                  decoration: InputDecoration(
                    hintText: 'Secound',
                  ),
                ),
                
              ),
            ],
          ),
        ),
        Container(
          child: RaisedButton(
            color: Colors.blue,
            child: Text('Calculate' , style: TextStyle(color: Colors.white)),
            onPressed: () {
              setState(() {
                var num1 = int.parse(_num1.text);
                var num2 = int.parse(_num2.text);

                answer = num1 + num2;

                
              });
            },
          ),
        ),
        SizedBox(height: 10,),
        Text('Result = $answer')

      ],
    ));
  }
}
