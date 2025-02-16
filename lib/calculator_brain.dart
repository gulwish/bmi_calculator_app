import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int? height;
  final int? weight;
  double? _bmi;
  CalculatorBrain({required this.height, required this.weight}) {}

  String calculateBMI() {
    _bmi = (weight! / (pow(height! / 100, 2)));
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25.0)
      return 'Overweight';
    else if (_bmi! < 18.5)
      return 'Normal';
    else
      return 'underweight';
  }

  String getInterpretation() {
    if (_bmi! >= 25.0)
      return 'do exercise';
    else if (_bmi! < 18.5)
      return 'good!';
    else
      return 'eat more :)';
  }
}
