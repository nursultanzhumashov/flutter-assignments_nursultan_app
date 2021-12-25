import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/custom_app_bar/custom_app_bar.dart';
import 'package:nursultan_assigmants/1_inc_dec/widgets/custom_rect_button.dart';

class SecondScreen extends StatefulWidget {
  final int san;

  const SecondScreen({Key key, this.san}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.white,
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
                  CustomRectButton(
                    number: widget.san,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
