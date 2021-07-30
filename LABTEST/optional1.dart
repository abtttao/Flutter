import 'package:flutter/material.dart';

class ListviewAss4 extends StatefulWidget {
  @override
  _ListviewAss4State createState() => _ListviewAss4State();
}

class _ListviewAss4State extends State<ListviewAss4> {
  List<Map<String, dynamic>> data = [
    {
      'title': 'Apple1',
      'subtitle': '9 baht',
      'image': 'assets/images/apple.png'
    },
    {
      'title': 'Banana1',
      'subtitle': '3 baht',
      'image': 'assets/images/banana.png'
    },
    {
      'title': 'Orange1',
      'subtitle': '5 baht',
      'image': 'assets/images/orange.png'
    },
    {
      'title': 'Kiwi1',
      'subtitle': '14 baht',
      'image': 'assets/images/kiwi.png'
    },
    {
      'title': 'Apple2',
      'subtitle': '9 baht',
      'image': 'assets/images/apple.jpg'
    },
    {
      'title': 'Banana2',
      'subtitle': '3 baht',
      'image': 'assets/images/banana.png'
    },
    {
      'title': 'Orange2',
      'subtitle': '5 baht',
      'image': 'assets/images/orange.png'
    },
    {
      'title': 'Kiwi2',
      'subtitle': '14 baht',
      'image': 'assets/images/kiwi.png'
    },
  ];

  Widget cardFruit(index) {
    print(index);
    return GestureDetector(
      onTap: () => showalert(index),
      child: Card(
        child: Column(
          children: [
            Image.asset(
              data[index]['image'],
              height: 100,
              width: 100,
            ),
            Text(data[index]['title']),
            Text(data[index]['subtitle']),
          ],
        ),
      ),
    );
  }

  Widget seemore() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/second', arguments: data);
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_circle_filled),
            Text('See more'),
          ],
        ),
      ),
    );
  }

  void showalert(index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Information'),
          content: Text('Are you sure to See more'),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  var selectData = data.elementAt(index);
                  data.removeAt(index);
                  data.insert(0, selectData);
                });
                Navigator.pushReplacementNamed(context, '/second',
                    arguments: data);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViweHorizontal'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 160.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return SizedBox(
                  // height: 300,
                  width: 150,
                  child: index < 5 ? cardFruit(index) : seemore());
            },
          ),
        ),
      ),
    );
  }
}
