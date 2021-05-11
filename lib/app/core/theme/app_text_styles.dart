import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles(this.context);

  final BuildContext context;

  TextTheme get defaultTypography =>
      GoogleFonts.interTextTheme(Theme.of(context).textTheme).copyWith(
        headline1: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.headline1!.merge(
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32.0,
                  letterSpacing: -0.24,
                  color: AppColors.ink,
                  height: 1.1875,
                ),
              ),
        ),
        headline2: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.headline2!.merge(
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28.0,
                  letterSpacing: -0.24,
                  color: AppColors.ink,
                  height: 1.1425,
                ),
              ),
        ),
        headline3: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.headline3!.merge(
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.0,
                  letterSpacing: -0.2,
                  color: AppColors.ink,
                  height: 1.17,
                ),
              ),
        ),
        headline4: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.headline4!.merge(
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  letterSpacing: -0.16,
                  color: AppColors.ink,
                  height: 1.2,
                ),
              ),
        ),
        headline5: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.headline5!.merge(
                TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  letterSpacing: -0.12,
                  color: AppColors.ink,
                  height: 1.225,
                ),
              ),
        ),
        bodyText1: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.bodyText1!.merge(
                TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0,
                  letterSpacing: -0.4,
                  color: AppColors.ink,
                  height: 1.4,
                ),
              ),
        ),
        bodyText2: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.bodyText2!.merge(
                TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  letterSpacing: -0.16,
                  color: AppColors.ink,
                  height: 1.15,
                ),
              ),
        ),
        subtitle1: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.subtitle1!.merge(
                TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  letterSpacing: -0.2,
                  color: AppColors.ink,
                  height: 1.5,
                ),
              ),
        ),
        subtitle2: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.subtitle2!.merge(
                TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: -0.16,
                  color: AppColors.ink,
                  height: 1.15,
                ),
              ),
        ),
        button: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.button!.merge(
                TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  letterSpacing: -0.16,
                  color: AppColors.ink,
                  height: 1.15,
                ),
              ),
        ),
        caption: GoogleFonts.inter(
          textStyle: Theme.of(context).textTheme.caption!.merge(
                TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                  letterSpacing: -0.12,
                  color: AppColors.ink,
                  height: 1.4,
                ),
              ),
        ),
      );
}
