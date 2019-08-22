import 'dart:math';

class BMIFunction {
  BMIFunction({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = (weight / pow(height, 2)) * 703;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to lower weight by exercising, reducucing calories and eating healthier foods.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job';
    } else {
      return 'You have a lower than normal body weight. Try to intake more calories with healthy food options.';
    }
  }
}
