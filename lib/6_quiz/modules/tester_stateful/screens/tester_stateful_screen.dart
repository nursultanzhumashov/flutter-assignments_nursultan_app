import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/6_quiz/constants/app_text_styles.dart';

class TesterStatefulScreen extends StatefulWidget {
  const TesterStatefulScreen({Key key}) : super(key: key);

  @override
  _TesterStatefulScreenState createState() => _TesterStatefulScreenState();
}

class _TesterStatefulScreenState extends State<TesterStatefulScreen> {
  int _counter = 0;
  int _countBuild = 0;

  @override
  Widget build(BuildContext context) {
    _countBuild++;
    log('TesterStatefulScreen => build: $_countBuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _counter.toString(),
              style: AppTextStyles.blackText42Bold,
            ),
            const SizedBox(height: 45.0),
            TextButton.icon(
              onPressed: increment,
              icon: const Icon(Icons.add),
              label: const Text('increment'),
            ),
            TextButton.icon(
              onPressed: decrement,
              icon: const Icon(Icons.delete),
              label: const Text('decrement'),
            ),
          ],
        ),
      ),
    );
  }

  void increment() {
    setState(() {
      _counter++;
    });

    print('increment: $_counter');
  }

  void decrement() {
    _counter--;
    setState(() {});
    print('decrement: $_counter');
  }
}
