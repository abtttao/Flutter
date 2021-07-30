import 'package:flutter/material.dart';

class CustomShop extends StatefulWidget {
  @override
  _CustomShopState createState() => _CustomShopState();
}

class _CustomShopState extends State<CustomShop> {
  @override
  int suit = 0;
  int shoe = 0;
  int total = 0;
  int cart = 0;

  void AddtoCart(int type) {
    setState(() {
      if (type == 1) {
        suit++;
        cart++;
        total = suit * 820 + shoe * 1920;
      } else {
        shoe++;
        cart++;
        total = suit * 820 + shoe * 1920;
      }
    });
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Demo'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Suit',
              ),
              Tab(
                text: 'Shoe',
              ),
              Tab(
                  child: Row(
                children: [
                  Text('Cart'),
                  Chip(
                    label: Text('$cart',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ) 
                ],
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Suit 820 baht',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/suit.jpg'),
                RaisedButton(
                  onPressed: () => AddtoCart(1),
                  child: Text('Add to cart',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  color: Colors.green,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Shoe 1290 baht',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/shoe.jpg'),
                RaisedButton(
                  onPressed: () => AddtoCart(2),
                  child: Text('Add to cart',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  color: Colors.green,
                )
              ],
            ),
            Column(
              children: [
                Text(' Suit 820  *  $suit  = ${suit * 820}  Baht'),
                Text(' Shoe 1920 *  = $shoe = ${suit * 820}  Baht'),
                Text(' Total = $total Baht'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
