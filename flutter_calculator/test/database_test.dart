import 'package:flutter_test/flutter_test.dart';
import 'package:fluttermongo/model/database.dart';

void main() {
  test('Connect to remote database', () async {
    Database db = Database();
    db.connect(test: false);
  });

  test('Connect to local database', () async {
    Database db = Database();
    db.connect(test: true);
  });

  test('create()', () async {
    Database db = Database();

    var _json = <String, dynamic>{'date': '05/10/2022', 'operation': '2+3=4'};

    await db.create(_json, 'log');
  });
}
