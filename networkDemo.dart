import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkDemo extends StatefulWidget {
  @override
  _NetworkDemoState createState() => _NetworkDemoState();
}

class _NetworkDemoState extends State<NetworkDemo> {
  String _url = 'http://10.5.177.41:3000/login';
  // String _message = 'Click to connect button';

  TextEditingController tcUsername = TextEditingController();
  TextEditingController tcPassword = TextEditingController();
  void connect() async {
    http.Response response = await http.post(
      _url,
      body: {'username': tcUsername.text, 'password': tcPassword.text},
    );
    if (response.statusCode == 200) {
      //OK

      // setState(() {
      //   _message = response.body.toString();
      // });
      print(response.body.toString());
    } else {
      print(response.body.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN '),
      ),
      body: Center(
        child: Column(
          children: [
            // Text(_message),
            TextField(
              controller: tcUsername,
              decoration: InputDecoration(hintText: 'Username'),
            ),
            TextField(
              controller: tcPassword,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            RaisedButton(
              onPressed: connect,
              child: Text('Sign in'),
            )
          ],
        ),
      ),
    );
  }
}
