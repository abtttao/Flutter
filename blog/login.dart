import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String _url = 'http://10.0.2.2:3000/mobile/login';
  final TextEditingController _controllerUsername = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();

  void login(BuildContext context) async {
    String username = _controllerUsername.text;
    String password = _controllerPass.text;
    // String respond = '';

    http.Response response = await http
        .post(_url, body: {'username': username, 'password': password});

    if (response.statusCode == 200) {
      String token = response.body.toString();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
      // print(token);
      Navigator.pushReplacementNamed(context, '/blog');
    } else {
      Get.defaultDialog(title: 'Error',middleText: response.body.toString());
      // print('Error:' + response.body.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _controllerUsername,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: _controllerPass,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              child: Text('Loign'),
              onPressed: () {
                login(context);
                // setState(
                //   () {
                //     username = _controllerUsername.text;
                //     password = _controllerPass.text;

                //     username == 'admin' && password == '1234'
                //         ? respond = 'Welcome admin'
                //         : respond = 'Wrong username or password';
                //   },
                // );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            // Text(
            //   respond,
            //   style: TextStyle(color: Colors.red),
            // ),
          ],
        ),
      ),
    );
  }
}
