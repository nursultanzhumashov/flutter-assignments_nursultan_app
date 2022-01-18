import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/app/1_inc_dec/widgets/custom_rect_button.dart';
import 'package:nursultan_assigmants/app/custom_app_bar/custom_app_bar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    Key key,
    this.san,
  }) : super(key: key);

  final int san;

//   @override
//   _SecondScreenState createState() => _SecondScreenState();
// }

//  class _SecondScreenState extends State<SecondScreen> {

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
                    number: san,
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
