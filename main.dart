import 'package:flutter/material.dart';
import 'package:myapp/TODO/test.dart';
import 'package:myapp/blog/blog.dart';
import 'package:myapp/blog/login.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   final String _url = 'http://10.0.2.2:3000/mobile/verify';

//   String home = '/login';

// //check

void main() {
  runApp(MaterialApp(home: TestSearch()));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new MainPage(),
//     );
//   }
// }

//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String token = prefs.getString('token');
//   if (token != null) {
//     // token exists
//     print('token exists');

//     // send token to server
//     http.Response response =
//         await http.get(_url, headers: {'authorization': token});
//     if (response.statusCode == 200) {
//       home = '/blog';
//     } else {
//       print('token is bad');
//     }
//   } else {
//     print('no token');
//   }

// runApp(GetMaterialApp(
//   initialRoute: home,
//   routes: {'/login': (context) => Login(), '/blog': (context) => Blog()},
//  home: login(),
// theme: ThemeData(
//   textTheme: TextTheme(
//     headline4:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//       headline3:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
//         headline6:TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
//   ),
//   scaffoldBackgroundColor: Colors.black,

// ),

// theme: ThemeData(
//   fontFamily: 'Grandstander',
//   primaryColor: Colors.lightGreen,
//   scaffoldBackgroundColor: Colors.black,
//   accentColor: Colors.red,
//     textTheme: TextTheme(
//   bodyText1: TextStyle(
//       fontWeight: FontWeight.bold,
//       color: Colors.red,
//       letterSpacing: 2.0,
//       fontSize: 20),
//       bodyText2: TextStyle(color: Colors.white),
// )
// ),
//   ));
// }
