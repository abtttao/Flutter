import 'package:flutter/material.dart';

class ListviewTest extends StatefulWidget {
  @override
  _ListviewTestState createState() => _ListviewTestState();
}

class _ListviewTestState extends State<ListviewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollView Demo'),
      ),
      body: SingleChildScrollView(
        child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dignissim suspendisse in est ante in nibh mauris cursus mattis. Tincidunt vitae semper quis lectus nulla at volutpat. Netus et malesuada fames ac. In dictum non consectetur a erat nam at lectus. A scelerisque purus semper eget duis at tellus at urna. Sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper. Pretium lectus quam id leo in vitae turpis massa sed. Elementum facilisis leo vel fringilla est ullamcorper eget nulla facilisi. Amet consectetur adipiscing elit ut aliquam purus sit amet. Nibh praesent tristique magna sit amet purus gravida quis blandit. Volutpat lacus laoreet non curabitur gravida arcu ac. Eu sem integer vitae justo eget magna fermentum. Tortor at risus viverra adipiscing at in tellus integer feugiat. Non sodales neque sodales ut etiam sit amet nisl. Cras fermentum odio eu feugiat pretium. Blandit massa enim nec dui nunc mattis enim ut tellus. Sagittis vitae et leo duis. Adipiscing commodo elit at imperdiet dui accumsan sit amet.',
          style: TextStyle(fontSize: 24),
        ),
        
      ),
      bottomNavigationBar: FloatingBtn(),
    );
  }
}


class FloatingBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          color: Colors.red,
          onPressed: () {},
          child: Text(
            'REJECT',
            style: TextStyle(color: Colors.white),
          ),
        ),
        RaisedButton(
          color: Colors.green,
          onPressed: () {},
          child: Text(
            'AGRIEE',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
