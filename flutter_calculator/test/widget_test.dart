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
  double num1 = 10;
  double num2 = 20;

  test('exist()', () async {
    Calculator calc = Calculator(num1, num2);

    expect(calc.exist(), true);
  });

  test('sum()', () async {
    Calculator calc = Calculator(num1, num2);
    double result = calc.sum();

    expect(result, num1 + num2);
  });

  test('sub()', () async {
    Calculator calc = Calculator(num1, num2);
    double result = calc.sub();

    expect(result, num1 - num2);
  });

  test('div()', () async {
    Calculator calc = Calculator(num1, num2);
    double result = calc.div();

    expect(result, num1 / num2);
  });

  test('mul()', () async {
    Calculator calc = Calculator(num1, num2);
    double result = calc.mul();

    expect(result, num1 * num2);
  });
}
