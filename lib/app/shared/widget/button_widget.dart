import 'package:challenge_registration/app/core/core.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final TextStyle textStyle;
  final Color overlayColor;
  final VoidCallback onPressed;

  const ButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.textStyle,
    required this.overlayColor,
    required this.onPressed,
  }) : super(key: key);

  ButtonWidget.primary({
    required String label,
    required VoidCallback onPressed,
  })   : backgroundColor = AppColors.blueShade,
        textStyle = TextStyle(
          color: AppColors.skyLight,
        ),
        onPressed = onPressed,
        overlayColor = AppColors.blueShade[10]!,
        label = label;

  ButtonWidget.secondary({
    required String label,
    required VoidCallback onPressed,
  })   : backgroundColor = AppColors.cyanShade,
        textStyle = TextStyle(
          color: AppColors.skyLightest,
        ),
        onPressed = onPressed,
        overlayColor = AppColors.cyanShade[20]!,
        label = label;

  ButtonWidget.transparent({
    required String label,
    required VoidCallback onPressed,
  })   : backgroundColor = Colors.transparent,
        textStyle = TextStyle(
          color: AppColors.blueShade,
        ),
        onPressed = onPressed,
        overlayColor = AppColors.skyLight,
        label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          overlayColor: MaterialStateProperty.all(
            overlayColor,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: Theme.of(context).textTheme.button!.merge(textStyle),
        ),
      ),
    );
  }
}
