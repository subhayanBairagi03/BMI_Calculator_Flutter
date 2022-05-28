import 'dart:math';

class CalculateBMI {
  CalculateBMI({required this.weight, required this.height});
  final int height;
  final int weight;

  double _bmi = 0.0;

  String calBMI() {
    _bmi = weight / pow((height / 100), 2);

    return _bmi.toStringAsFixed(1);
  }

  String Message() {
    if (_bmi < 18.5) {
      return 'Underweight !';
    } else if (_bmi > 18.5 && _bmi < 25.0) {
      return 'Normal';
    } else if (_bmi > 25.0 && _bmi < 29.0) {
      return 'Overweight !!';
    } else {
      return 'Obese !!';
    }
  }

  String Messagebody() {
    if (_bmi < 18.5) {
      return 'Your BMI is quite low , you should eat more!';
    } else if (_bmi > 18.5 && _bmi < 25.0) {
      return 'Your BMI is perfect, you are quite fine';
    } else if (_bmi > 25.0 && _bmi < 29.0) {
      return 'Getting Overweight is a problem, maintain a healthy diet & check again';
    } else {
      return 'This is not good, consult with your Physician';
    }
  }
}
