import 'package:flutter/material.dart';

class TodoUpdateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "What to do?"),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Cancel")),
              ElevatedButton(onPressed: () {}, child: Text("Add"))
            ],
          )
        ],
      ),
    );
  }
}
