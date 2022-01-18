import 'package:nursultan_assigmants/app/6_quiz/models/question_model.dart';
import 'package:nursultan_assigmants/app/6_quiz/modules/home/controllers/beka_controller.dart';

class QuestionRepository {
  final BekaController _homeController = BekaController.findHomeCont;

  int index = 0;

  List<QuestionModel> questions = [
    QuestionModel(
        question: 'Дуйнодо эн популярдуу тил Кытай тилиби?', answer: true), //0
    QuestionModel(
        question: 'Альберт Эйнштейндин мээсин уурдалганы чынбы?',
        answer: true), //1
    QuestionModel(
        question: 'Жер планетасы тоголок формадабы?', answer: false), //2
    QuestionModel(
        question: 'Дуйнода эн бийик тоо Эверест тоосу,чынбы?', answer: false),
    QuestionModel(
      question: 'Дуйнодо эн популярдуу тил Кытай тилиби?',
    ), //3
  ];

  bool checkAsnwer(bool answer) {
    return answer == questions[index].answer;
  }

  bool isLastQuestion() {
    return questions[questions.length - 2].question ==
        questions[index].question;
  }

  bool isFinished() {
    return index >= questions.length - 1;
  }

  void nextQuestion() {
    if (index < questions.length - 1) {
      index++;
    }
  }

  String getQuestion() {
    return questions[index].question;
  }

  void reset() {
    index = 0;
    _homeController.resetAndStart();
  }
}

final QuestionRepository questionRepo = QuestionRepository();
