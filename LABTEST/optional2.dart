import 'package:flutter/material.dart';

class ListviewAss41 extends StatefulWidget {
  @override
  _ListviewAss41State createState() => _ListviewAss41State();
}

class _ListviewAss41State extends State<ListviewAss41> {
  List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Demo'),
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['title']),
                subtitle: Text(data[index]['subtitle']),
                trailing: SizedBox(
                  child: Image.asset(data[index]['image']),
                  height: 50,
                  width: 50,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

