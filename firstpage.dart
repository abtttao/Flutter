import 'package:flutter/material.dart';
import 'secoundpage.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Secoundpage(),
              ),
            );
          },
          child: Text('Next'),
        ),
      ),
    );
    ;
  }
}
