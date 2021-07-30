import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  Widget createDrawer(context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/download.jpg',
                  width: 100,
                ),
                Text('IRENE')
              ],
            ),
            decoration: BoxDecoration(color: Colors.lightBlue),
          ),
          FlatButton.icon(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => WelcomeScreen(),
                    ));
              },
              icon: Icon(Icons.golf_course),
              label: Text('Welcome')),
          FlatButton.icon(
              onPressed: null, icon: Icon(Icons.games), label: Text('Item 2'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      drawer: createDrawer(context),
      body: Container(
        alignment: Alignment.topCenter,
        child: Text('Hello'),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
     
      body: Container(
        alignment: Alignment.center,
        child: Text('Welcome'),
      ),
    );
  }
}
