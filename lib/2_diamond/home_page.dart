import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nursultan_assigmants/custom_app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: CustomAppBar(
        'Тапшырма 02',
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
            const Text(
              'I\'m rich',
              style: TextStyle(
                  fontSize: 69.0, fontFamily: 'BonheurRoyale-Regular'),
            ),
            Image.asset(
              'assets/imagesdiamond/im.png',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
