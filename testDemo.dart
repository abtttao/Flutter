import 'package:flutter/material.dart';

class Coffee2 extends StatefulWidget {
  @override
  _Coffee2State createState() => _Coffee2State();
}

class _Coffee2State extends State<Coffee2> {
  bool _status = false;
  String _type = 'Hot';
  String _sugar = 'None';
  double _volume = 0.0;
  int _groupvalue = 2;
  int price = 35;
  int extar = 0;
  var imageshow = 'assets/images/latee-Hot.jpg';

  void selectphoto() {
    setState(() {
      if (_groupvalue == 0 && extar == 5) {
        imageshow = 'assets/images/cappuccino-ice.jpg';
      } else if (_groupvalue == 0 && extar == 0) {
        imageshow = 'assets/images/cappuccino-Hot.png';
      } else if (_groupvalue == 1 && extar == 5) {
        imageshow = 'assets/images/Americano-ice.jpg';
      } else if (_groupvalue == 1 && extar == 0) {
        imageshow = 'assets/images/Americano-Hot.jpg';
      } else if (_groupvalue == 2 && extar == 5) {
        imageshow = 'assets/images/latee-ice.jpg';
      } else {
        imageshow = 'assets/images/latee-Hot.jpg';
      }
    });
    showAlert();
  }

  void changeRadio(int value) {
    setState(() {
      _groupvalue = value;
      if (_groupvalue == 0) {
        price = 40;
      } else if (_groupvalue == 1) {
        price = 30;
      } else {
        price = 35;
      }
    });
  }

  void toggleCheckbox(bool value) {
    setState(() {
      _status = value;
      if (value) {
        _type = 'Cold';
        extar = 5;
      } else {
        _type = 'Hot';
        extar = 0;
      }
    });
  }

  Future showAlert() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Your order'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset(
                    '$imageshow',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                    '$_type coffee with $_sugar sugar. Price = ${price + extar} baht'),
              ],
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFU Coffee Shop'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Your order',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Coffee',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Radio(
                    value: 2, groupValue: _groupvalue, onChanged: changeRadio),
                Text('Latee 35'),
                Radio(
                    value: 1, groupValue: _groupvalue, onChanged: changeRadio),
                Text('Americano 30'),
                Radio(
                    value: 0, groupValue: _groupvalue, onChanged: changeRadio),
                Text('Cappuccino 40'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Type',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("Hot"),
                Switch(value: _status, onChanged: toggleCheckbox),
                Text("Cold (+5)")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'Sugar level',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text("None"),
                Slider(
                  min: 0,
                  max: 1,
                  divisions: 1,
                  value: _volume,
                  // label: _volume.toString(),
                  onChanged: (value) {
                    setState(() {
                      _volume = value;
                      // print('$_volume');
                      if (_volume == 1.0) {
                        _sugar = 'Normal';
                      } else {
                        _sugar = 'None';
                      }
                    });
                  },
                ),
                Text("Normal")
              ],
            ),
          ),
          RaisedButton(
            onPressed: selectphoto,
            child: Text('ORDER'),
          )
        ],
      ),
    );
  }
}



