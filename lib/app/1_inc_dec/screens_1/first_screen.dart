import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/app/1_inc_dec/first_controller.dart';
import 'package:nursultan_assigmants/app/1_inc_dec/screens_1/second_screen.dart';
import 'package:nursultan_assigmants/app/1_inc_dec/widgets/custom_button.dart';
import 'package:nursultan_assigmants/app/1_inc_dec/widgets/custom_rect_button.dart';
import 'package:nursultan_assigmants/app/custom_app_bar/custom_app_bar.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({Key key}) : super(key: key);

  final FirstController controller = Get.put(FirstController());

  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
              'Тапшырма 01',
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRectButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            san: _number,
                          ),
                        ),
                      );
                    },
                    number: _number,
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        onTap: () => controller.dec(),
                        iconText: '-',
                      ),
                      const SizedBox(width: 20.0),
                      CustomButton(
                        onTap: () => controller.inc(),
                        iconText: '+',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void dec() {
    _number--;
  }

  void inc() {
    _number++;
  }
}
