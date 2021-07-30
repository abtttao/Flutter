import 'package:flutter/material.dart';

class ChangeColor extends StatefulWidget {
  @override
  _ChangeColorState createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  final TextEditingController _red = TextEditingController();
  final TextEditingController _green = TextEditingController();
  final TextEditingController _blue = TextEditingController();
  int red1, green1, blue1;
  Color textColor = Colors.black;

  changecolor(red, green, blue) {
    setState(() {
      textColor = Color.fromRGBO(red, green, blue, 1);
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Plase input only 0-255"),
            actions: [
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Title'),
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        controller: _red,
                        onChanged: (text) {
                          setState(() {
                            red1 =
                                int.parse(_red.text.isEmpty ? '0' : _red.text);
                            green1 = int.parse(
                                _green.text.isEmpty ? '0' : _green.text);
                            blue1 = int.parse(
                                _blue.text.isEmpty ? '0' : _blue.text);
                            print('Red $red1');
                            print('Green $green1');
                            print('Blue $blue1');
                            if (red1 < 0 ||
                                red1 > 255 ||
                                green1 < 0 ||
                                green1 > 255 ||
                                blue1 < 0 ||
                                blue1 > 255) {
                              _showDialog();
                              print('over input');
                            } else {
                              changecolor(
                                  int.parse(_red.text),
                                  _green.text.isEmpty ? 0 : green1,
                                  _blue.text.isEmpty ? 0 : blue1);
                              print('change color');
                              print(red1);
                            }
                          });
                        },
                        decoration: InputDecoration(
                          labelText: ('Red 0-255'),
                        ),
                      ),
                      TextField(
                        controller: _green,
                        onChanged: (text) {
                          setState(() {
                            red1 =
                                int.parse(_red.text.isEmpty ? '0' : _red.text);
                            green1 = int.parse(
                                _green.text.isEmpty ? '0' : _green.text);
                            blue1 = int.parse(
                                _blue.text.isEmpty ? '0' : _blue.text);
                            print('Red $red1');
                            print('Green $green1');
                            print('Blue $blue1');
                            if (red1 < 0 ||
                                red1 > 255 ||
                                green1 < 0 ||
                                green1 > 255 ||
                                blue1 < 0 ||
                                blue1 > 255) {
                                  _showDialog();
                              print('over input');
                            } else {
                              changecolor(
                                  _red.text.isEmpty ? 0 : red1,
                                  int.parse(_green.text),
                                  _blue.text.isEmpty ? 0 : blue1);
                              print('change color');
                              print(red1);
                            }
                          });
                        },
                        decoration: InputDecoration(
                          labelText: ('Green 0-255'),
                        ),
                      ),
                      TextField(
                        controller: _blue,
                        onChanged: (text) {
                          setState(() {
                            red1 =
                                int.parse(_red.text.isEmpty ? '0' : _red.text);
                            green1 = int.parse(
                                _green.text.isEmpty ? '0' : _green.text);
                            blue1 = int.parse(
                                _blue.text.isEmpty ? '0' : _blue.text);
                            print('Red $red1');
                            print('Green $green1');
                            print('Blue $blue1');
                            if (red1 < 0 ||
                                red1 > 255 ||
                                green1 < 0 ||
                                green1 > 255 ||
                                blue1 < 0 ||
                                blue1 > 255) {
                                  _showDialog();
                              print('over input');
                            } else {
                              changecolor(
                                _red.text.isEmpty ? 0 : red1,
                                _green.text.isEmpty ? 0 : green1,
                                int.parse(_blue.text),
                              );
                              print('change color');
                              print(red1);
                            }
                          });
                        },
                        decoration: InputDecoration(
                          labelText: ('Blue 0-255'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: textColor,
                    height: 195,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



