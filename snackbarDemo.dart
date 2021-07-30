import 'package:flutter/material.dart';

class SnackbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Mysnack(),
    );
  }
}

class Mysnack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Show'),
      onPressed: () {
        SnackBar snack = SnackBar(
          content: Text('Hello'),
          duration: Duration(seconds: 1),
          action: SnackBarAction(label: 'Undo', onPressed: (){}),
        );
        Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(snack);
      },
    );
  }
}
