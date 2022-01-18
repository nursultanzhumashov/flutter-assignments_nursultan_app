import 'dart:developer';

import 'package:nursultan_assigmants/app/7_bmi_calculator/repositories/calculation_repo.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/app_enums/enums.dart';

class NurController extends GetxController {
  static final NurController findHomeCont = Get.find<NurController>();

  Rx<Gender> gender = Gender.UNKNOWN.obs;
  Rx<WeightOrAge> weightOrAge = WeightOrAge.UNKNOWN.obs;

  RxDouble height = 0.0.obs;
  RxInt weigth = 1.obs;
  RxInt age = 1.obs;

  RxInt count = 1.obs;

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  void _init() {
    log('_init');
    height.value = 120;
    weigth.value = 45;
    age.value = 16;
  }

  @override
  void onClose() {
    super.onClose();
  }

  void decrement(WeightOrAge chosenType) {
    log('decrement');
    if (chosenType == WeightOrAge.WEIGHT) {
      weigth.value--;
    } else {
      age.value--;
    }

    count.value++;
  }

  void increment(WeightOrAge chosenType) {
    log('increment');
    if (chosenType == WeightOrAge.WEIGHT) {
      weigth.value++;
    } else {
      age.value++;
    }

    count.value++;
  }

  void onSliderChange(double val) {
    log('onSliderChange');
    height.value = val;
  }

  void chooseGender(Gender val) {
    log('chooseGender');
    gender.value = val;
  }

  void calculateBmi(double height, double width) {
    calculationRepo.calculateBMI(height, width);
  }
}
