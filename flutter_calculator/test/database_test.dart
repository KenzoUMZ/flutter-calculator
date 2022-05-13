import 'package:flutter_calculator/controller/database.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('connect()', () async {
    Database db = Database();
    db.connect();
  });

  test('create()', () async {
    Database db = Database();

    var _json = <String, dynamic>{
      '_id': 'idExample',
      'date': '05/10/2022',
      'operation': '2+3=4'
    };

    bool res = await db.create(_json, 'log');
    expect(res, true);
  });

  test('read()', () async {
    Database db = Database();

    var _json = <String, dynamic>{
      '_id': 'idExample',
      'date': '05/10/2022',
      'operation': '2+3=4'
    };
    var _json_request = await db.read(_json, 'log');

    expect(_json_request, _json);
  });

  test('update()', () async {
    Database db = Database();

    var _json = <String, dynamic>{
      '_id': 'idExample',
      'date': '05/10/2022',
      'operation': '2+3=5'
    };

    var res = await db.update(_json, 'log');

    expect(res, true);
  });

  test('delete()', () async {
    Database db = Database();

    var _json = <String, dynamic>{'_id': 'idExample'};

    var res = await db.delete(_json, 'log');

    expect(res, true);
  });
}
