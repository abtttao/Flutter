import 'dart:ui';
import 'package:flutter/material.dart';


class Quiz2 extends StatefulWidget {
  @override
  _Quiz2State createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  final List book = [
    {
      'name': 'Chapter 1',
      'des': 'Introduction',
    },
    {'name': 'Chapter 2', 'des': 'Basic Dart'},
  ];

  void reload() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              reload();
            },
          )
        ],
      ),
      body: Column(
        children: [
          //   ListView.builder(
          //     itemCount: book.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(
          //             title: Text(book[index]['name']),
          //             subtitle: Text('${book[index]['des']} des'),
          //             trailing: IconButton(
          //               icon: Icon(
          //                 Icons.check_box_outline_blank_outlined,
          //                 color: Colors.white,
          //               ),
          //               onPressed: () {
          //                 SnackBar snack = SnackBar(
          //                   content: Text('Read Chapter 1'),
          //                   duration: Duration(seconds: 1),
          //                   action:
          //                       SnackBarAction(label: 'Yes', onPressed: () {}),
          //                 );
          //                 Scaffold.of(context).removeCurrentSnackBar();
          //                 Scaffold.of(context).showSnackBar(snack);
          //               },
          //             )),
          //       );
          //     },
          //   ),
          Row(
            children: [
              Text(
                'Chapter 1',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 220,
              ),
              IconButton(
                icon: Icon(
                  Icons.check_box_outline_blank_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  SnackBar snack = SnackBar(
                    content: Text('Read Chapter 1'),
                    duration: Duration(seconds: 1),
                    action: SnackBarAction(
                        label: 'Yes',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chapter1()),
                          );
                        }),
                  );
                  Scaffold.of(context).removeCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(snack);
                },
              ),
            ],
          ),
          Column(
            children: [
              Text('Introduction'),
            ],
          ),

          Row(
            children: [
              Text(
                'Chapter 2',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 220,
              ),
              IconButton(
                icon: Icon(
                  Icons.check_box_outline_blank_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  SnackBar snack = SnackBar(
                    content: Text('Read Chapter 2'),
                    duration: Duration(seconds: 1),
                    action: SnackBarAction(
                        label: 'Yes',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Chapter2()),
                          );
                        }),
                  );
                  Scaffold.of(context).removeCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(snack);
                },
              ),
            ],
          ),
          Column(
            children: [ 
              Text('Basic Dart'),
            ],
          ),
        ],
      ),
    );
  }
}

class Chapter1 extends StatefulWidget {
  @override
  _Chapter1State createState() => _Chapter1State();
}

class _Chapter1State extends State<Chapter1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 1'),
      ),
      body: Container(
        child: Text('This is chapter 1.'),
      ),
    );
  }
}

class Chapter2 extends StatefulWidget {
  @override
  _Chapter2State createState() => _Chapter2State();
}

class _Chapter2State extends State<Chapter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 2'),
      ),
      body: Container(
        child: Text('This is chapter 2.'),
      ),
    );
  }
}
