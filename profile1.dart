import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/2f/42/f4/2f42f4f8f1e656b449c1a7050d60d4ef.jpg'),
                radius: 60,
                backgroundColor: Colors.red,
              ),
            ),
            Divider(
              color: Colors.grey[500],
              height: 50,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey),
            ),
            
            Text(
              'ธิดาพร ชาวคูเวียง',
              style: TextStyle(color: Colors.yellow , fontSize: 22),
            ),
             SizedBox(height: 20,),
            Text(
              'Age',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '26',
              style: TextStyle(color: Colors.yellow , fontSize: 22),
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 10,),
                Text('6131302009@lamduan.mfu.ac.th',
                style: TextStyle(color: Colors.grey)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
