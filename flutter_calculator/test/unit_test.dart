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
    Calculator calc = Calculator();

    calc.text = num1.toString() + '+' + num2.toString();
    expect(calc.exist(), true);
  });

  test('sum()', () async {
    Calculator calc = Calculator();
    calc.num1 = num1;
    calc.num2 = num2;
    double result = calc.sum();

    expect(result, num1 + num2);
  });

  test('sub()', () async {
    Calculator calc = Calculator();
    calc.num1 = num1;
    calc.num2 = num2;
    double result = calc.sub();

    expect(result, num1 - num2);
  });

  test('div()', () async {
    Calculator calc = Calculator();
    calc.num1 = num1;
    calc.num2 = num2;
    double result = calc.div();

    expect(result, num1 / num2);
  });

  test('mul()', () async {
    Calculator calc = Calculator();
    calc.num1 = num1;
    calc.num2 = num2;
    double result = calc.mul();

    expect(result, num1 * num2);
  });

  test('calculate() - sum', () async {
    Calculator calc = Calculator();
    calc.text = num1.toString() + '+' + num2.toString();
    double result = calc.calculate();

    expect(result, num1 + num2);
  });

  test('calculate() - sub', () async {
    Calculator calc = Calculator();
    calc.text = num1.toString() + '-' + num2.toString();
    double result = calc.calculate();

    expect(result, num1 - num2);
  });

  test('calculate() - div', () async {
    Calculator calc = Calculator();
    calc.text = num1.toString() + '/' + num2.toString();
    double result = calc.calculate();

    expect(result, num1 / num2);
  });

  test('calculate() - mul', () async {
    Calculator calc = Calculator();
    calc.text = num1.toString() + '*' + num2.toString();
    double result = calc.calculate();

    expect(result, num1 * num2);
  });

  test('log()', () async {
    Calculator calc = Calculator();
    calc.text = num1.toString() + '/' + num2.toString();
    double result = calc.calculate();
    var _log = calc.log();

    expect(_log, true);
  });

  test('zero div', () async {
    Calculator calc = Calculator();
    num2 = 0;
    calc.text = num1.toString() + '/' + num2.toString();
    double result = calc.calculate();

    expect(result, num1 / num2);
  });

  test('showValues()', () async {
    Calculator calc = Calculator();
    calc.text = num1.toString() + '/' + num2.toString();
    double result = calc.calculate();
    calc.showValues();
  });
}
