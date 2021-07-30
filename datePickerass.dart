import 'package:flutter/material.dart';

class DatePickerAss extends StatefulWidget {
  @override
  _DatePickerAssState createState() => _DatePickerAssState();
}

class _DatePickerAssState extends State<DatePickerAss> {
  DateTime _selectDate;


  String _dateFrom = '';
  String _dateTo = '';

  Future showDate() async {
    DateTime dt1 = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020, 1, 1),
        lastDate: DateTime(2020, 12, 31));

    if (dt1 != null) {
      // print(dt.toString());
      setState(() {
        // _selectDate = dt.toString();
        _dateFrom = '${dt1.day}/${dt1.month}/${dt1.year}';
        _selectDate = dt1;
      });
    }
  }

  Future showDate2() async {
    DateTime dt = await showDatePicker(
        context: context,
        initialDate: _selectDate,
        firstDate: _selectDate,
        lastDate: DateTime(2020, 12, 31));

    if (dt != null) {
      // print(dt.toString());
      setState(() {
        // _selectDate = dt.toString();
        _dateTo = '${dt.day}/${dt.month}/${dt.year}';
    
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATE PICKER DEMO'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: RaisedButton.icon(
                      color: Colors.blue,
                      onPressed: showDate,
                      icon: Icon(Icons.calendar_today),
                      label: Text('FROM')),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(_dateFrom),
              ],
            ),
            Row(
              children: [
                RaisedButton.icon(
                    color: Colors.purple,
                    onPressed: showDate2,
                    icon: Icon(Icons.calendar_today),
                    label: Text('TO')),
                SizedBox(
                  width: 20,
                ),
                Text(_dateTo)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
