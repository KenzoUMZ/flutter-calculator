import 'dart:convert';
import 'package:mongo_dart/mongo_dart.dart';

class Database {
  String LOCAL_URL = 'mongodb://localhost:27017/calculadora';
  var db;
  bool mock = false;

  Database({bool isMock = false}) {
    mock = isMock;
  }

  connect({bool isMock = false}) async {
    db = await Db.create(LOCAL_URL);
    await db.open();
  }

  create(var _json, String collection) async {
    try {
      await connect();
      var coll = db.collection(collection);
      await coll.insertOne(_json);
      return true;
    } catch (e) {
      return false;
    }
  }

  read(var _json, String collection) async {
    try {
      await connect();
      var coll = db.collection(collection);
      var obj = await coll.findOne(where.eq('_id', _json['_id']));
      return obj;
    } catch (e) {
      return false;
    }
  }

  update(var _json, String collection) async {
    try {
      await connect();
      var coll = db.collection(collection);
      // var obj = await coll.findOne(where.eq('_id', _json['id']));
      await coll.save(_json);
      return true;
    } catch (e) {
      return false;
    }
  }

  delete(var _json, String collection) async {
    try {
      await connect();
      var coll = db.collection(collection);
      await coll.remove({'_id': _json['_id']});
      return true;
    } catch (e) {
      return false;
    }
  }
}
