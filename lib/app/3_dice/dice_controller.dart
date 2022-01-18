import 'dart:math';

import 'package:get/get.dart';

class DiceController extends GetxController {
  RxInt leftcount = 4.obs;
  RxInt ridhtcount = 6.obs;
  void throwDice() {
    leftcount.value = Random().nextInt(6) + 1;
    ridhtcount.value = Random().nextInt(6) + 1;
  }
}
