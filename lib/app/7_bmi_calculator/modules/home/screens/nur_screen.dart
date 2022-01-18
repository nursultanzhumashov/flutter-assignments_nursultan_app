import 'dart:developer';

import 'package:nursultan_assigmants/app/7_bmi_calculator/app_constants/app_colors.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/app_constants/app_text_styles.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/app_enums/enums.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/modules/home/controllers/nur_controller.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/modules/result/screens/result_screen.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/widgets/circular_button.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/widgets/icon_widget.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/widgets/reusable_widget.dart';
import 'package:nursultan_assigmants/app/7_bmi_calculator/widgets/weight_heigth_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NurScreen extends StatelessWidget {
  NurScreen({Key key}) : super(key: key);

  NurController controller = Get.put<NurController>(NurController());

  // HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    log('build ===>>> ${controller.count.value}');
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title: const Text(
          'Ден соолуктун индекси',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25.0),
                      Expanded(
                        child: Row(
                          children: [
                            Obx(
                              () => ReUsableWidget(
                                onTap: () =>
                                    controller.chooseGender(Gender.MALE),
                                bgColor: controller.gender.value == Gender.MALE
                                    ? AppColors.activeIconColor
                                    : AppColors.inActiveIconColor,
                                child: const IconWidget(
                                  icon: FontAwesomeIcons.mars,
                                  text: 'Еркек',
                                  allPaddingSize: 12.0,
                                ),
                              ),
                            ),
                            const SizedBox(width: 25.0),
                            Obx(
                              () => ReUsableWidget(
                                onTap: () =>
                                    controller.chooseGender(Gender.FEMALE),
                                bgColor:
                                    controller.gender.value == Gender.FEMALE
                                        ? AppColors.activeIconColor
                                        : AppColors.inActiveIconColor,
                                child: const IconWidget(
                                  icon: FontAwesomeIcons.venus,
                                  text: 'Айым',
                                  allPaddingSize: 12.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25.0),
                      ReUsableWidget(
                        onTap: null,
                        bgColor: AppColors.activeIconColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Бой',
                              style: AppTextStyles.titleTextStyle,
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Obx(
                                  () => Text(
                                    controller.height.value.round().toString(),
                                    style: AppTextStyles.numberTextStyle,
                                  ),
                                ),
                                const SizedBox(width: 5.0),
                                const Text(
                                  'см',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            SliderTheme(
                              data: const SliderThemeData(
                                trackHeight: 2.0,
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                                thumbColor: Colors.red,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 18.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 30.0),
                                overlayColor: Color(0x29EB1555),
                              ),
                              child: Obx(
                                () => Slider(
                                  value: controller.height.value,
                                  min: 50,
                                  max: 240,
                                  onChanged: (double ozgorgonSan) {
                                    controller.onSliderChange(ozgorgonSan);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Expanded(
                        child: Row(
                          children: [
                            ReUsableWidget(
                              onTap: null,
                              bgColor: AppColors.activeIconColor,
                              child: Obx(() => WeightHeightWidget(
                                    title: 'Салмак',
                                    weight: controller.weigth.value.toString(),
                                    increment: () => controller
                                        .increment(WeightOrAge.WEIGHT),
                                    decrement: () => controller
                                        .decrement(WeightOrAge.WEIGHT),
                                  )),
                            ),
                            const SizedBox(width: 25.0),
                            ReUsableWidget(
                              onTap: null,
                              bgColor: AppColors.activeIconColor,
                              child: Obx(() => WeightHeightWidget(
                                    title: 'Жаш',
                                    age: controller.age.value.toString(),
                                    increment: () =>
                                        controller.increment(WeightOrAge.AGE),
                                    decrement: () =>
                                        controller.decrement(WeightOrAge.AGE),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),
              CustomButton(
                child: const Text(
                  'Эсепте',
                  style: AppTextStyles.buttonTextStyle,
                ),
                onTap: () {
                  controller.calculateBmi(controller.height.value,
                      controller.weigth.value.toDouble());

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultScreen()));
                },
                buttonColor: AppColors.buttonColor,
                constraints: BoxConstraints(
                  minHeight: 52,
                  minWidth: MediaQuery.of(context).size.width,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
