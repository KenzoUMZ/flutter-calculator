import 'package:flutter_calculator/controller/database.dart';

class Calculator {
  String text = '';
  double num1 = 0;
  double num2 = 0;
  String operation = '';
  // Operations methods

  double calculate() {
    // definir operação
    if (text.indexOf('+') != -1)
      operation = '+';
    else if (text.indexOf('-') != -1)
      operation = '-';
    else if (text.indexOf('*') != -1)
      operation = '*';
    else if (text.indexOf('/') != -1) operation = '/';

    // separar a string em duas partes
    List<String> nums = text.split(operation);

    num1 = double.parse(nums[0]);
    num2 = double.parse(nums[1]);

    double result;
    if (operation == '+')
      result = sum();
    else if (operation == '-')
      result = sub();
    else if (operation == '*')
      result = mul();
    else if (operation == '/')
      result = div();
    else
      result = -1;

    text = text + '=' + result.toString();
    log();
    return result;
  }

  void showValues() {
    print('num1:' + num1.toString());
    print('num2:' + num2.toString());
    print('operation:' + operation);
    print('text:' + text);
  }

  double sum() {
    return num1 + num2;
  }

  double sub() {
    return num1 - num2;
  }

  double div() {
    return num1 / num2;
  }

  double mul() {
    return num1 * num2;
  }

  bool exist() {
    return true;
  }

  log() async {
    var now = DateTime.now().day.toString() +
        '/' +
        DateTime.now().month.toString() +
        '/' +
        DateTime.now().year.toString() +
        ' - ' +
        DateTime.now().hour.toString() +
        ':' +
        DateTime.now().minute.toString() +
        ':' +
        DateTime.now().second.toString();

    var log = <String, dynamic>{'date': now, 'operation': text};
    return await Database().create(log, 'log');
  }
}
