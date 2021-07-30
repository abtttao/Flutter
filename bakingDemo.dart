import 'package:flutter/material.dart';

class BakingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: Image.asset('assets/images/download.jpg', fit: BoxFit.cover,),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Spacer(),
                  Text('IRENE '.toUpperCase(), style: Theme.of(context).textTheme.headline3,),
                  Text('Bae Joo hyun '.toUpperCase(), style: Theme.of(context).textTheme.headline4,),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('start to Reveluv'.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward),
                        
                        
                      ],
                      
                    ),
                  ),
                 
                ],
              ))
        ],
      ),
    );
  }
}
