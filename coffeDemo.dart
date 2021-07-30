import 'package:flutter/material.dart';

class CoffeeDemo extends StatefulWidget {
  @override
  _CoffeeDemoState createState() => _CoffeeDemoState();
}

class _CoffeeDemoState extends State<CoffeeDemo> {
  bool _cb = false;
  String _sugar = '';

  void toggleCheckbox(bool value) {
    setState(() {
      _cb = value;
    });
  }

  double _sliderValue = 0;


   Future showAlert() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('YOUR ODER'),
          content: Text('data'),
 
          );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU COFFEE SHOP'),
      ),
      body: Column(
        children: [
          Text('Your Order'),
          Row(
            children: [
              Text('Type'),
              SizedBox(
                width: 210,
              ),
              Text('Hot'),
              Switch(value: _cb, onChanged: toggleCheckbox),
              Text('Cold'),
            ],
          ),
          Row(
            children: [
              Text('Sugar level'),
              Text('None'),
              Slider(
                min: 0.0,
                max: 2.0,
                divisions: 2,
                value: _sliderValue,
                label: _sugar,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                    if (_sliderValue == 0.0) {
                      _sugar = 'none';
                    } else if (_sliderValue == 1.0) {
                      _sugar = 'less';
                    } else {
                      _sugar = 'normal';
                    }
                  });
                },
              ),
              Text('Normal'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton 
              
              ( onPressed: showAlert , child: Text('ORDER'),),
            ],
          )
        ],
      ),
    );
  }
}
