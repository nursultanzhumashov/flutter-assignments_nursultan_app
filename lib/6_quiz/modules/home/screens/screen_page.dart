import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/6_quiz/constants/app_colors.dart';
import 'package:nursultan_assigmants/6_quiz/constants/app_text_styles.dart';
import 'package:nursultan_assigmants/6_quiz/modules/home/controllers/home_controller.dart';
import 'package:nursultan_assigmants/6_quiz/widgets/custom_button.dart';
import 'package:nursultan_assigmants/custom_app_bar/custom_app_bar.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key key}) : super(key: key);

  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  final HomeController _homeController = HomeController.findHomeCont;

  @override
  void initState() {
    super.initState();
    _homeController.getQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBGColor,
      appBar: CustomAppBar(
        '',
        automaticallyImplyLeading: true,
        //bul customniy widget,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.red),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Obx(
                    () => Text(
                      _homeController.question.value,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.mainQuestionStyle,
                    ),
                  ),
                ),
              ),
            ),
            Obx(() {
              return _homeController.isLast.value
                  ? const SizedBox.shrink()
                  : CustomButton(
                      onPressed: () =>
                          _homeController.checkAnswer(true, context),
                      buttonText: 'Ооба',
                    );
            }),
            Obx(() => CustomButton(
                  onPressed: () => _homeController.checkAnswer(false, context),
                  buttonText:
                      _homeController.isLast.value ? 'Кайрадан башта' : 'Жок',
                  buttonBgColor: Colors.red,
                )),
            const SizedBox(
              width: 10.0,
            ),
            Obx(
              () => Row(
                children: _homeController.icons,
              ),
            ),
            const SizedBox(
              height: 40.0,
              width: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
