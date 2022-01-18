import 'package:get/get.dart';

class FirstController extends GetxController {
  RxInt number = 0.obs;

  void dec() {
    number.value--;
  }

  void inc() {
    number.value++;
  }
}
