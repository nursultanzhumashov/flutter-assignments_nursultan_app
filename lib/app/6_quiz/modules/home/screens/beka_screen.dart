import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/6_quiz/constants/app_colors.dart';
import 'package:nursultan_assigmants/app/6_quiz/constants/app_text_styles.dart';
import 'package:nursultan_assigmants/app/6_quiz/modules/home/controllers/beka_controller.dart';
import 'package:nursultan_assigmants/app/6_quiz/widgets/custom_button.dart';
import 'package:nursultan_assigmants/app/custom_app_bar/custom_app_bar.dart';

class BekaScreen extends StatelessWidget {
  BekaScreen({Key key}) : super(key: key);

  final BekaController _homeController = BekaController.findHomeCont;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBGColor,
      appBar: CustomAppBar(
        '',
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
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
                padding: EdgeInsets.all(10.0),
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
                      buttonText: 'Туура',
                    );
            }),
            Obx(() => CustomButton(
                  onPressed: () => _homeController.checkAnswer(false, context),
                  buttonText: _homeController.isLast.value
                      ? 'Кайрадан башта'
                      : 'Туура эмес',
                  buttonBgColor: Colors.red,
                )),
            Obx(
              () => Row(
                children: _homeController.icons,
              ),
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
