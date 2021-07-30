import 'package:flutter/material.dart';

class CheckboxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Demo'),
      ),
      body: CheckboxMain(),
    );
  }
}

class CheckboxMain extends StatefulWidget {
  @override
  _CheckboxMainState createState() => _CheckboxMainState();
}

class _CheckboxMainState extends State<CheckboxMain> {
  bool _cb = false;
  String _text = '';

  void toggleCheckbox(bool value) {
    setState(() {
      _cb = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: _cb,
              onChanged: toggleCheckbox,
            ),
            Text('Apple'),
            Spacer(),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _text = "$_cb";
                  
                });
              },
              child: Text('CHECK'),
            ),
            Text(_text)
          ],
        ),
        Row(
          children: [
            Switch(value: _cb, onChanged: toggleCheckbox),
            Text('banana')
          ],
        )
      ],
    );
  }
}
