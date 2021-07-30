import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Container Demo'),
      // ),
      body: Row(
        children: [
          Container(
            width: 100,
            color: Colors.red,
          ),

          Expanded(
            child: Container(
              width: 100,
              color: Colors.teal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ),

          Container(
            width: 100,
            color: Colors.blue,
          )
        ],

        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // children: [
        //   Container(
        //     width: 100,
        //     height: 100,
        //     color: Colors.green,
        //   ),
        //   Spacer(flex: 3,),
        //   Container(
        //     width: 200,
        //     height: 100,
        //     color: Colors.yellow,
        //   ),
        //   Spacer(flex: 1,),
        //   Container(
        //     width: 100,
        //     height: 100,
        //     color: Colors.red,
        //   ),
        // ],

        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // crossAxisAlignment: CrossAxisAlignment.stretch,

        // children: [
        //   Container(
        //     width: 100,
        //     height: 100,
        //     color: Colors.green,
        //   ),
        //   Container(
        //       width: 100,
        //       height: 200,
        //       color: Colors.yellow,
        //     ),
        //   Container(
        //       width: 100,
        //       height: 100,
        //       color: Colors.red,
        //     ),
        // ],

        // width: 200,
        // height: 100,
        // color: Colors.amber,
        // child: Align(
        //   child: Text('Child'),
        //   alignment: Alignment(-1,0),
        // ),

        // child: Text('Child'),
        // color: Colors.amber,
        // width: 100,
        // height: 50,
        // margin: EdgeInsets.all(20),
        // padding: EdgeInsets.all(5),
        // alignment: Alignment.bottomRight,

        //   decoration: BoxDecoration(
        //     image: DecorationImage(image: NetworkImage('') ,fit:  BoxFit.cover,
        //   ),
        //   border: Border.all(
        //     color: Colors.orange,
        //     width: 0 ,
        //   ),
        //   borderRadius: BorderRadius.circular(10),
        // ),
      ),
    );
  }
}
