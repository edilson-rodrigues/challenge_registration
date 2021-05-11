import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  final BuildContext context;

  AppTheme(this.context);

  ThemeData get defaultTheme => ThemeData(
        primaryColor: AppColors.blueShade,
        textTheme: AppTextStyles(context).defaultTypography,
        scaffoldBackgroundColor: AppColors.skyLightest,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          elevation: 0.5,
          backgroundColor: AppColors.blueShade,
        ),
      );
}
