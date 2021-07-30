import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderValue = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Demo'),
      ),
      body: Column(
        children: [
          Slider(
            min: 0.0,
            max: 10.0,
            divisions: 10,
            value: _sliderValue,
            label: _sliderValue.toString(),
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
            
              });
            },
          ),
              Text('$_sliderValue')
        ],
      ),
      
      
    );
  }
}
