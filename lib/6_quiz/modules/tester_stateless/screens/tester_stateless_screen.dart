import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nursultan_assigmants/6_quiz/constants/app_text_styles.dart';
import 'package:nursultan_assigmants/6_quiz/modules/tester_stateless/controllers/tester_stateless_controller.dart';

class TesterStatelessScreen extends StatelessWidget {
  TesterStatelessScreen({Key key}) : super(key: key);

  final TesterStatelessController controller =
      Get.put(TesterStatelessController());

  int _counter = 0;
  int _countBuild = 0;

  @override
  Widget build(BuildContext context) {
    _countBuild++;
    dev.log('TesterStatelessScreen => build: $_countBuild');
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.3),
      appBar: AppBar(
        title: const Text('Stateless'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(
                  controller.counter.value.toString(),
                  style: AppTextStyles.blackText42Bold,
                );
              },
            ),
            const SizedBox(height: 45.0),
            Obx(
              () => controller.icon.value,
            ),
            const SizedBox(height: 45.0),
            TextButton.icon(
              onPressed: () =>
                  controller.ikonkaJasa(Icons.delete_forever_outlined),
              icon: const Icon(Icons.add),
              label: const Text('ikonka ochur'),
            ),
            TextButton.icon(
              onPressed: () => controller.ikonkaJasa(Icons.add),
              icon: const Icon(Icons.add),
              label: const Text('ikonka add'),
            ),
            const SizedBox(height: 45.0),
            TextButton.icon(
              onPressed: () => controller.increment(),
              icon: const Icon(Icons.add),
              label: const Text('increment'),
            ),
            TextButton.icon(
              onPressed: controller.decrement,
              icon: const Icon(Icons.delete),
              label: const Text('decrement'),
            ),
          ],
        ),
      ),
    );
  }

  void increment() {
    _counter++;

    print('increment: $_counter');
  }

  void decrement() {
    _counter--;
    print('decrement: $_counter');
  }
}
