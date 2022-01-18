import 'dart:developer';
import 'dart:math' as math;

class FakeFirestore {
  double calculateBMI(double h, double w) {
    final _bmi = w / math.pow(h / 100, 2);

    log('FakeFirestore.calculateBMI _bmi ===>>> $_bmi');

    return _bmi;
  }

  String getResult(double _bmi) {
    if (_bmi >= 25) {
      return 'Ашыкча салмак';
    } else if (_bmi > 18.5) {
      return 'Нормалдуу';
    } else {
      return 'Салмак аз';
    }
  }

  String getInterpretation(double _bmi) {
    if (_bmi >= 25) {
      return 'Сиздин дене салмагыныз нормадан ойдо,спорт менен кобуроок машыкканга аракет кылыныз.';
    } else if (_bmi >= 18.5) {
      return 'Сиздин дене салбагыныз нормалдуу.Азаматсыз!';
    } else {
      return 'Сиздин дене салмагыңыз нормадан төмөн.Сиз бир аз тамактан бастырыныз.';
    }
  }
}

final FakeFirestore fakeFirestore = FakeFirestore();
