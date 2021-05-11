import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../app/core/core.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.lilyScriptOne(
          fontSize: 37,
          color: AppColors.blueShade[20],
        ),
        text: 'Do',
        children: [
          TextSpan(
            text: ' it.',
            style: GoogleFonts.lilyScriptOne(
              fontSize: 37,
              color: AppColors.blueTint,
            ),
          ),
        ],
      ),
    );
  }
}
