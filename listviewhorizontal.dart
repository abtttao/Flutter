import 'package:flutter/material.dart';

class ListviewHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 150,
            width: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            color: Colors.green,
          ),
          Container(
            width: 200,
            color: Colors.blue,
          ),
        ],
      ),
    
    );
  }
}
