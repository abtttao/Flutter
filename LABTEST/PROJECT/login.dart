import 'package:flutter/material.dart';
import 'package:myapp/LABTEST/PROJECT/home.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  void Login() {
    setState(() {
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Title'),
      // ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 41,
          ),
          Image.asset('assets/images/login.png'),
          RaisedButton(
            onPressed: Login,
            child: Text(
              'เข้าสู่ระบบ',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
