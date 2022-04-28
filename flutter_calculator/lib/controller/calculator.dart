class Calculator {
  String text = '';
  double num1 = 0;
  double num2 = 0;
  String operation = '';
  // Operations methods

  double calculate() {
    text = text;

    // definir operação
    if (text.indexOf('+') != -1)
      operation = '+';
    else if (text.indexOf('-') != -1)
      operation = '-';
    else if (text.indexOf('*') != -1)
      operation = '*';
    else if (text.indexOf('/') != -1) operation = '/';

    List<String> nums = text.split(operation);

    num1 = double.parse(nums[0]);
    num2 = double.parse(nums[1]);

    if (operation == '+')
      return sum();
    else if (operation == '-')
      return sub();
    else if (operation == '*')
      return mul();
    else if (operation == '/')
      return div();
    else
      return 0;
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
}
