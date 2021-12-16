import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Ашыкча салмак';
    } else if (_bmi > 18.5) {
      return 'Нормалдуу';
    } else {
      return 'Салмак аз';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Сиздин дене салмагыныз нормадан ойдо,спорт менен кобуроок машыкканга аракет кылыныз.';
    } else if (_bmi >= 18.5) {
      return 'Сиздин дене салбагыныз нормалдуу.Азаматсыз!';
    } else {
      return 'Сиздин дене салмагыңыз нормадан төмөн.Сиз бир аз тамактан бастырыныз.';
    }
  }
}
