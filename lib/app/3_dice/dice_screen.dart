import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/3_dice/dice_controller.dart';
import 'package:nursultan_assigmants/app/custom_app_bar/custom_app_bar.dart';

class DiceScreen extends StatelessWidget {
  DiceScreen({Key key}) : super(key: key);

  final DiceController controller = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFF5353),
      appBar: CustomAppBar(
        'Dice',
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Obx(
          () => Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: controller.throwDice,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Image.asset(
                      'assets/imagesdice/dice${controller.leftcount}.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: controller.throwDice,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Image.asset(
                            'assets/imagesdice/dice${controller.ridhtcount}.png',
                          )))),
            ],
          ),
        ),
      ),
    );
  }
}



//class DiceScreen extends StatelessWidget {


//   DiceScreen({Key key}) : super(key: key);

//   final DiceController controller = Get.put(DiceController());