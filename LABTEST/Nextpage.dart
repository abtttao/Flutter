import 'package:flutter/material.dart';
 
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            // Jump to the second route
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
 
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: RaisedButton(
          onPressed: () {
            //Return to previous page (first route)
            Navigator.pop(context);
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}
