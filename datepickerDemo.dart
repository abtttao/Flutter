import 'package:flutter/material.dart';

class DatepickDemo extends StatefulWidget {
  @override
  _DatepickDemoState createState() => _DatepickDemoState();
}

class _DatepickDemoState extends State<DatepickDemo> {
  String _selectDate = '';
   String _selectTime = '';

  Future showDate() async {
    DateTime dt = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020, 1, 1),
        lastDate: DateTime(2020, 12, 31));

    if (dt != null) {
      // print(dt.toString());
      setState(() {
        // _selectDate = dt.toString();
        _selectDate = '${dt.day}/${dt.month}/${dt.year}';
      });
    }
  }

  Future showtime() async {
    TimeOfDay td = await showTimePicker(context: context, initialTime: TimeOfDay.now());

        if (td != null) {
      // print(dt.toString());
      setState(() {
        // _selectDate = dt.toString();
        _selectTime = '${td.hour}:${td.minute}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: RaisedButton.icon(
                      onPressed: showDate,
                      icon: Icon(Icons.calendar_today),
                      label: Text('Select Date')),
                ),
                Text(_selectDate),
              ],
            ),
            Row(
              children: [
                RaisedButton.icon(
                    onPressed: showtime,
                    icon: Icon(Icons.timer),
                    label: Text('Select Time')),
              ],
              
            ),
              Text(_selectTime),
          
          ],
        ),
      ),
    );
  }
}
