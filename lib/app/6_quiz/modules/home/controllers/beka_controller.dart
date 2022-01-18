import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/6_quiz/repository/question_repo.dart';

class BekaController extends GetxController {
  static final BekaController findHomeCont = Get.find<BekaController>();

  RxList<Icon> icons = <Icon>[].obs;

  RxString question = 'Дуйнодо эн популярдуу тил Кытай тилиби?'.obs;

  RxBool isLast = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  // Tuura ikonka kosh
  void addCorrectIcon() {
    icons.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  }

  // Tuura emes ikonka kosh
  void addInCorrectIcon() {
    icons.add(Icon(
      Icons.close,
      color: Colors.red,
    ));
  }

  void resetAndStart() {
    icons.value = <Icon>[];
    isLast.value = false;
  }

  String getQuestion() {
    question.value = questionRepo.getQuestion();
  }

  void checkAnswer(bool answer, BuildContext context) {
    final _isLastQuestion = questionRepo.isLastQuestion();

    if (_isLastQuestion) {
      isLast.value = true;

      // CustomDialog.showCustomDialog(
      //   parentContext: context,
      //   title: 'Аягына чыкты',
      //   content: const Text('Жаңыдан башта!'),
      // );
      // isLast.value = true;
      // questionRepo.reset();
    }

    final _isFinished = questionRepo.isFinished();

    if (_isFinished) {
      // CustomDialog.showCustomDialog(
      //   parentContext: context,
      //   title: 'Аягына чыкты',
      //   content: const Text('Жаңыдан башта!'),
      // );
      isLast.value = true;
      questionRepo.reset();
    } else {
      final _isCorrectAnswer = questionRepo.checkAsnwer(answer);

      if (_isCorrectAnswer) {
        addCorrectIcon();
      } else {
        addInCorrectIcon();
      }

      questionRepo.nextQuestion();
      getQuestion();
    }
  }
}
