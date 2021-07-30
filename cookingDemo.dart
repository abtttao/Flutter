import 'package:flutter/material.dart';

class CookingDemo extends StatefulWidget {
  @override
  _CookingDemoState createState() => _CookingDemoState();
}

class _CookingDemoState extends State<CookingDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cooking Recipes'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Papaya Salad',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 160,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.blue)),
                      child: Text(
                          'Made with green papayas, this is a classic Thai dish that is delicious and refreshing! You can also find variations of this salad done with green mango or carrots which makes it a versatile dish great for making at home. If you order Som Tam in a Thai restaurant be sure to specify the heat level you can manage as it can be very spicy!'),
                    ),
                  )
                ],
              ),
              
              Column(
                
                children: [
                   SizedBox(
                        height: 10,
                      ),
                  Image.network(
                    'https://i1.wp.com/www.brasswok.com/wp-content/uploads/2015/12/papaya-Salad-Somtam-Thai-Food-Recipe-e1450854067408.jpg?resize=640%2C400&ssl=1',
                    height: 170,
                    width: 170,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(Icons.star)
                    ],
                  ),
                  Text('3128 Reviews' ,   style: TextStyle(fontWeight: FontWeight.bold, ),),
                   SizedBox(
                        height: 10,
                      ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.timelapse),
                          Text('PREP:' ,),
                          Text('5 min' , )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(Icons.timer),
                          Text('COOK:' , ),
                          Text('10 min ', )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Icon(Icons.local_dining),
                          Text('FEEDS:', ),
                          Text('1-3',)
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
