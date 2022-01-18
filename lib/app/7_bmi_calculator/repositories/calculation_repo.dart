import 'dart:developer';

import 'package:nursultan_assigmants/app/7_bmi_calculator/services/fake_firestore.dart';

class CalculationRepo {
  CalculationRepo({this.height, this.weight});

  final double height;
  final double weight;

  double _bmi;

  void calculateBMI(double h, double w) {
    _bmi = fakeFirestore.calculateBMI(h, w);

    log('CalculationRepo.calculateBMI _bmi ===>>> $_bmi');
  }

  String getResultNumber() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    return fakeFirestore.getResult(_bmi);
  }

  String getInterpretation() {
    return fakeFirestore.getInterpretation(_bmi);
  }
}

final CalculationRepo calculationRepo = CalculationRepo();
