import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/repositories/calculation_repo.dart';

class ResultController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  String getResult() {
    return calculationRepo.getResult();
  }

  String getResultNumber() {
    return calculationRepo.getResultNumber();
  }

  String getInterpretation() {
    return calculationRepo.getInterpretation();
  }
}
