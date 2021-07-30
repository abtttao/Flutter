import 'package:flutter/material.dart';

class StyleDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Style  Demo'),
        ),
        body: Column(
          children: [
            Text(
              'Wellcome to style demo',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Hello styling  ',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text('Mobile App' ,),
            Text('Flutter is awesome'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: null , child: Text('Click'),),
        );
  }
}
