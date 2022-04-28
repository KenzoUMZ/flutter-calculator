class Calculator {
  String text;
  double num1 = 0;
  double num2 = 0;
  String operation = '';
  // Operations methods

  Calculator(this.text) {
    text = text;

    // definir operação
    String operation = '';
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
  }

  double calculate() {
    if (operation == '+')
      return this.sum();
    else if (operation == '-')
      return this.sub();
    else if (operation == '*')
      return this.mul();
    else if (operation == '/')
      return this.div();
    else
      return 0;
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
