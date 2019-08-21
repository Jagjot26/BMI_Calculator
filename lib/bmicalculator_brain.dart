import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  final int weight;
  final int height;
  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(
        1); //returns a String with a specific number of digits after the decimal, after the conversion
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    double x = 24.999999 * pow(height / 100, 2);
    double xx = weight - x;
    String xxx = xx.toStringAsFixed(1);
    double y = 18.666666 * pow(height / 100, 2);
    double yy = y - weight;
    String yyy = yy.toStringAsFixed(1);
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. You need to lose atleast $xxx kilograms for a normal BMI.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job';
    } else {
      return 'You have a lower than normal body weight. You need to gain atleast $yyy kilograms for a normal BMI.';
    }
  }
}
