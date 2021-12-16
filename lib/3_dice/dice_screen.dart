import 'dart:math';

import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xffFF5353),
      appBar: AppBar(
        backgroundColor: Color(0xffFF5353),
        title: Text('Dice'),
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
