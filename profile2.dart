import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/6e/ee/87/6eee8754855eb47dfdcefbe05d89e7bf.jpg'),
            radius: 70,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'แก้งค์แครอท ',
            style: TextStyle(
                color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20),
          ),
          Text(
            'ตามหารักแท้ ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('+66 639 490 659')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(10),
            color: Colors.white,
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('FindRealLove@bahtmail.com')
              ],
            ),
          )
        ],
      ),
    );
  }
}
