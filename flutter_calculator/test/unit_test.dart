// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_calculator/controller/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_calculator/main.dart';
import 'dart:developer';

void main() {
  double num1 = 10.0;
  double num2 = 20.0;

  test('exist()', () async {
    String text = num1.toString() + '+' + num2.toString();
    print(text);
    Calculator calc = Calculator(text);
    expect(calc.exist(), true);
  });

  test('sum()', () async {
    String text = num1.toString() + '+' + num2.toString();
    Calculator calc = Calculator(text);
    double result = calc.calculate();

    expect(result, num1 + num2);
  });

  test('sub()', () async {
    String text = num1.toString() + '-' + num2.toString();
    Calculator calc = Calculator(text);
    double result = calc.calculate();

    expect(result, num1 - num2);
  });

  test('div()', () async {
    String text = num1.toString() + '/' + num2.toString();
    Calculator calc = Calculator(text);
    double result = calc.calculate();
    print(num1 / num2);
    expect(result, num1 / num2);
  });

  test('mul()', () async {
    String text = num1.toString() + '*' + num2.toString();
    Calculator calc = Calculator(text);
    double result = calc.calculate();

    expect(result, num1 * num2);
  });
}
