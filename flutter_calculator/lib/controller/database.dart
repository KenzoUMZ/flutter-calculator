import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

class Database {
  String REMOTE_URL =
      'mongodb+srv://cividatimongodb:Fyx2Mlk43rHaWsd3@cluster0.paiq2.mongodb.net/calculadora?retryWrites=true&w=majority';

  String LOCAL_URL = 'mongodb://localhost:27017/calculadora';
  var db;

  Database({bool test = false}) {}

  connect({bool test = false}) async {
    if (test == true) {
      print('Connecting to local db...');
      this.db = await Db.create(LOCAL_URL);
      db.open();
    } else if (test == false) {
      print('Connecting to remote db...');
      this.db = await Db.create(REMOTE_URL);
      db.open();
    }
  }

  changeVar() {
    db = 'alterando o valor de db';
  }

  create(var _json, String collection) async {
    db = await Db.create(LOCAL_URL);
    await db.open();
    //connect(test: true);
    var col = db.collection(collection);
    await col.insertOne(_json);
    //await col.insertOne(<String, dynamic>{'name': 'rubens'});
    return true;
  }
}
