import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {

  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  final List<Map<String, Object>> fruit = [
    {'name': 'Apple', 'price': 9, 'image': 'apple.png'},
    {'name': 'Banana', 'price': 3, 'image': 'banana.png'},
    {'name': 'Orange', 'price': 5, 'image': 'orange.png'}
  ];

  undoDelete(index, theFruit) {
    setState(() {
      fruit.insert(index, theFruit);
    });
  }

  showSnackBar(context, fruit, index) {
    Scaffold.of(context).removeCurrentSnackBar();
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(fruit['name'] + " deleted"),
      action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          undoDelete(index, fruit);
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Demo'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 8),
            child: RaisedButton.icon(
              onPressed: () {
                setState(() {
                  fruit.add(
                    {'name': 'Kiwi', 'price': 14, 'image': 'kiwi.png'},
                  );
                });
              },
              icon: Icon(Icons.add_circle_outline),
              label: Text('Add'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: fruit.length,
              itemBuilder: (context, index) {
                final item = fruit[index];
                return Dismissible(
                  background: Container(color: Colors.red),
                  key: Key(item.toString()),
                  onDismissed: (direction) {
                    setState(() {
                      var theFruit = fruit[index];
                      showSnackBar(context, theFruit, index);
                      fruit.removeAt(index);
                    });
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(fruit[index]['name']),
                      subtitle: Text('${fruit[index]['price']} baht'),
                      trailing: Image.asset(
                        'assets/images/' + fruit[index]['image'],
                        height: 100,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

