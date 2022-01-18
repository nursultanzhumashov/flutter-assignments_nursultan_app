import 'package:nursultan_assigmants/app/7_bmi_calculator/app_constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    @required this.child,
    @required this.onTap,
    this.buttonColor,
    this.constraints,
    this.shape,
    Key key,
  }) : super(key: key);

  final Color buttonColor;
  final VoidCallback onTap;
  final Widget child;
  final BoxConstraints constraints;
  final ShapeBorder shape;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTap,
      constraints: constraints ??
          BoxConstraints(
            minHeight: 62.0,
            minWidth: 62.0,
          ),
      fillColor: buttonColor ?? AppColors.circleButtonColor,
      shape: shape ?? CircleBorder(),
      child: child,
    );
  }
}
