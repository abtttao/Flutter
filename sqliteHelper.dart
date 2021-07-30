import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteHelper {
  String dbFile = 'lexitron.sqlite';
  Database _db;

  // copy DB file to app

  void openDB() async {
    //find DB app's folder
    String dbPath = await getDatabasesPath();
    String fullPath = join(dbPath, dbFile);
    print(fullPath);

    // DB selected?
    bool existed = await databaseExists(fullPath);
    if (!existed) {
      // no DB
      // copy DB
      //check whether the db folder exists
      try {
        Directory(dirname(fullPath)).create(recursive: true);
      } catch (_) {
        print('Cannot find folder');
      }
      // copy from asset folder
      ByteData data = await rootBundle.load(join('assets/db', dbFile));
      List<int> byte =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(fullPath).writeAsBytes(byte, flush: true);
      print('DB copied');
    } else {
      print('DB existed');
    }

    // open DB
    _db = await openDatabase(fullPath, readOnly: true, singleInstance: true);
  }

  void closeDB() async {
    await _db.close();
    print('DB closed');
  }

  void searchDB() async {
    // List list = await _db.rawQuery('SELECT * FROM eng2th WHERE esearch = ?2 AND  ecat=?1', ['N' , 'abandon']);

    var list = await _db.query('eng2th',
        columns: ['tentry , ethai'],
        where: '"esearch" = ? AND "ecat" = ?',
        whereArgs: ['abandon', 'N']);

    if (list.length > 0) {
      print(list);
    } else {
      print(' Not found');
    }
  }
}
