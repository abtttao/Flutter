import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareUser extends StatefulWidget {
  @override
  _ShareUserState createState() => _ShareUserState();
}

class _ShareUserState extends State<ShareUser> {
  bool _gender = true;
  TextEditingController tcName = TextEditingController();
  TextEditingController tcAge = TextEditingController();

  void changeGender(bool value) {
    setState(() {
      _gender = value;
    });
  }

  void save() async {
    String name = tcName.text;
    int age = int.tryParse(tcAge.text);

    if (age != null) {
      SharedPreferences pref = await SharedPreferences.getInstance();

      Map<String, dynamic> data = {'name': name, 'age': age, 'gender': _gender};
      String json = jsonEncode(data);
      pref.setString('kdata', json);
      // pref.setString('kname', name);
      // pref.setInt('kage', age);
      // pref.setBool('kgender', _gender);

      showAlert('Alert', 'Saved');
    } else {
      showAlert('Alert', 'Fail');
    }
  }

  Future showAlert(String title, String content) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: Text(title), content: Text(content));
      },
    );
  }

  void load() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    // String name = pref.getString('kname');
    // int age = pref.getInt('kage');
    // bool sex = pref.getBool('kgender');
    String json = pref.getString('kdata');
    if (json != null) {
      Map data = jsonDecode(json);
      tcName.text = data['name'];
      tcAge.text = data['age'].toString();
      setState(() {
        _gender = data['gender'];
      });
    }

    // if (name != null) {
    //   tcName.text = name;
    // }
    // if (age != null) {
    //   tcAge.text = age.toString();
    // }
    // if (sex != null) {
    //   setState(() {
    //     _gender = sex;
    //   });
    // }
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  void clear() async {
    tcName.text = '';
    tcAge.text = '';
    setState(() {
      _gender = true;
    });

    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.clear();
    showAlert('Alert', 'Cleared');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: tcName,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: tcAge,
              decoration: InputDecoration(hintText: 'Age'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Male'),
                Switch(value: _gender, onChanged: changeGender),
                Text('Female'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineButton(
                  onPressed: save,
                  child: Text(
                    'SAVE',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                OutlineButton(
                  onPressed: clear,
                  child: Text(
                    'CLEAR',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
