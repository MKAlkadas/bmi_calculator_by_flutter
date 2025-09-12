import 'dart:math';

class BMICalculator {
  BMICalculator({required this.height, required this.weight});

  final double height;
  final double weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight - زيادة وزن';
    } else if (_bmi > 18.5) {
      return 'Normal - وزن طبيعي';
    } else {
      return 'Underweight- نقص وزن';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'لديك وزن زائد. حاول ممارسة الرياضة أكثر \n You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'لديك وزن طبيعي. عمل جيد! \n You have a normal body weight Good job!';
    } else {
      return 'لديك نقص في الوزن. يمكنك أن تأكل أكثر قليلاً \n You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
