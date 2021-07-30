import 'dart:collection';

import 'package:flutter/material.dart';

class TourisDemo extends StatefulWidget {
  @override
  _TourisDemoState createState() => _TourisDemoState();
}

class _TourisDemoState extends State<TourisDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Place'),
      ),
      body: Column(
        children: [
          Image.network(
              'http://static.asiawebdirect.com/m/phuket/portals/thaiwave-com/homepage/chiangrai/pagePropertiesImage/chiang-rai.jpg'),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chiang Rai White Temples',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Chiang Rai, Thailand',
                        style: TextStyle(color: Colors.grey),
                      ),
                      
                    ],
                  ),
                ),
                Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Text('999'),
              ],
            ),
            ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Text(
                    'CALL',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Icon(
                    Icons.near_me,
                    color: Colors.blue,
                  ),
                  Text(
                    'ROUTE',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                width: 60,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text(
                    'SHARE',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text(
               'Wat Rong Khun is a unique temple that stands out through the white color and the use of pieces of glass in the plaster, sparkling in the sun. The white color signifies the purity of the Buddha, while the glass symbolizes the Buddha’s wisdom and the Dhamma, the Buddhist teachings.The Wat Rong Khun was designed by Chalermchai Kositpipat, a famous Thai visual artist. To date the temple is not finished.'),
          )
        ],
      ),
    );
  }
}
