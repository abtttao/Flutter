import 'package:flutter/material.dart';

class Wedding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
        body: Center(
          child: Column( children: [
            Spacer(),
            Text(
              'Wedding Organizer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Pre-wedding, Photo, Party ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
                color: Colors.red,
                child: Text('Our service', style: TextStyle(color: Colors.white)),
                onPressed: () {}),
            Spacer(
              flex: 1,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('345 Moo 1 Tasud Chiang Rai, Thailand',
                    style: TextStyle(color: Colors.white)),
              ],
            ))
          ]),
        ));
  }
}
