import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/7_bmi_calculator/constants/constants.dart';
import 'package:nursultan_assigmants/7_bmi_calculator/widgets/custom_button.dart';
import 'package:nursultan_assigmants/7_bmi_calculator/widgets/reusable_card.dart';
import 'package:nursultan_assigmants/custom_app_bar/custom_app_bar.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Жыйынтык',
                textAlign: TextAlign.center,
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            buttonTitle: 'Кайра Эсепте',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
