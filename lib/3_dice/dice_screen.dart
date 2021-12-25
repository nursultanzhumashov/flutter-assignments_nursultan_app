import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/custom_app_bar/custom_app_bar.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key key}) : super(key: key);

  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftcount = 4;
  int ridhtcount = 6;
  void throwDice() {
    leftcount = Random().nextInt(6) + 1;
    ridhtcount = Random().nextInt(6) + 1;
    setState(() {});
  }

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
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Image.asset(
                    'assets/imagesdice/dice$leftcount.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                  child: Image.asset(
                    'assets/imagesdice/dice$ridhtcount.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
