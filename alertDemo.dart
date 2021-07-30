import 'package:flutter/material.dart';

class AlertDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Demo'),
        ),
        body: AlertMain());
  }
}

class AlertMain extends StatefulWidget {
  @override
  _AlertMainState createState() => _AlertMainState();
}

class _AlertMainState extends State<AlertMain> {
  String _result = 'Click button';

  Future showAlert() async {
    String answer = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you love Irene'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/download.jpg'),
              Text('IRENE'),
            ],
          ),
          actions: [
            FlatButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.of(context).pop('ok');
                },
                child: Text('OK')),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel')),
          ],
        );
      },
    );
    if (answer != null) {
      if (answer == 'ok') {
        setState(() {
          _result = 'You are Reveluv';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          OutlineButton.icon(
              onPressed: showAlert,
              icon: Icon(Icons.announcement),
              label: Text(
                'Alert',
                style: TextStyle(color: Colors.red),
              )),
          SizedBox(
            width: 10,
          ),

          //FIXME : change Text
          Text(_result)
        ],
      ),
    );
  }
}
