import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  final String _url = 'http://10.0.2.2:3000/mobile/blog';

  /// logout ////////
  ///

  var _blog;
  String _token;

  /// get blog data ////////
  Future<dynamic> getBlog() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _token = prefs.getString('token');

    if (_token != null) {
      http.Response response =
          await http.get(_url, headers: {'authorization': _token});

      if (response.statusCode == 200) {
        return Future.delayed(Duration(seconds: 3), () {
          return json.decode(response.body);
        });
      }
    } else {
      print('no _token');
    }
  }

token = response.body.toString();

  // void getDummy() {
  //   var res = {
  //     'post': {
  //       {'blogID': 1, 'title': 'Today', 'detail': 'Today is hot', 'year': 2021}
  //     },
  //   };
  // }

  void deletePost(blogID) {
    int userID = _blog['users']['userID'];
    print(blogID);
    print(userID);

    Get.defaultDialog(
        title: 'Warning',
        middleText: 'Delete this post',
        textConfirm: 'Yes',
        textCancel: 'Cancel',
        confirmTextColor: Colors.white,
        radius: 0.8,
        onConfirm: () async {
          Get.back();
          String url = '$_url/$blogID';
          http.Response response = await http
              .delete(url, headers: {HttpHeaders.authorizationHeader: _token});
          if (response.statusCode == 200) {
            setState(() {});
          } else {
            Get.defaultDialog(
              title: 'Error',
              middleText: 'Failed to delte post',
            );
            throw Exception('Delete error');
          }
        });
  }

  Widget createListview(blog) {
    _blog = blog;
    var post = blog['post'];
    return ListView.builder(
      itemCount: post.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            leading: Icon(Icons.edit),
            title: Text(post[index]['title']),
            subtitle: Text(post[index]['detail']),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => deletePost(post[index]['blogID']),
            ));
      },
    );
  }

  void logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');

    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getBlog();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog'),
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: logout)],
      ),
      body: FutureBuilder(
        future: getBlog(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              return createListview(data);
            } else if (snapshot.hasError) {
              return Text('$snapshot.error');
            }
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
