import 'dart:math';

class CalculatorFunction {
  CalculatorFunction({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Obesity';
    }
  }

  String getInterpritation() {
    if (_bmi >= 25) {
      return 'Overweight = 25–29.9';
    } else if (_bmi > 18.5) {
      return 'Normal weight = 18.5–24.9';
    } else {
      return 'Obesity = BMI of 30 or greater';
    }
  }
}
