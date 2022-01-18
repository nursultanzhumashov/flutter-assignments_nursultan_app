import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/app_constants/app_colors.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/app_constants/app_text_styles.dart';

import 'package:nursultan_assigmants/app/7_bmi_calculator/modules/home/screens/nur_screen.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/modules/result/controllers/result_controller.dart';

import 'package:nursultan_assigmants/app/7_bmi_calculator/widgets/circular_button.dart';

import 'package:nursultan_assigmants/app/7_bmi_calculator/widgets/reusable_widget.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    Key key,
  }) : super(key: key);

  final ResultController _resultController =
      Get.put<ResultController>(ResultController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title:
            const Text('Ден соолук индекси (BMI)', textAlign: TextAlign.center),
        backgroundColor: const Color(0xff424242),
        automaticallyImplyLeading: true,
        shadowColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),

      // AppBar(
      //   backgroundColor: AppColors.bgColor,
      //   title: const Text(
      //     'BMI CALCULATOR',
      //     style: AppTextStyles.titleTextStyle,
      //   ),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 35.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    const Text(
                      'Жыйынтык',
                      style: AppTextStyles.resultTitle,
                    ),
                    const SizedBox(height: 35.0),
                    ReUsableWidget(
                      bgColor: AppColors.activeIconColor,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              _resultController.getResult(),
                              style: AppTextStyles.resultSubTitle,
                            ),
                            Text(
                              _resultController.getResultNumber(),
                              style: AppTextStyles.resultNumber,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                _resultController.getInterpretation(),
                                style: AppTextStyles.titleTextStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 35.0),
                  ],
                ),
              ),
            ),
            CustomButton(
              child: const Text(
                'Кайра Эсепте/app',
                style: AppTextStyles.buttonTextStyle,
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => NurScreen()),
                    (Route<dynamic> route) => false);
              },
              buttonColor: AppColors.buttonColor,
              constraints: BoxConstraints(
                minHeight: 92,
                minWidth: MediaQuery.of(context).size.width,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
