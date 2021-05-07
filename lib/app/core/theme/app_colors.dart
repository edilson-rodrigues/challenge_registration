import 'package:flutter/material.dart';

class AppColors {
  // Primary
  // shade blue colors [10][20][30]
  // normal 00
  static const MaterialColor blueShade = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      10: Color(0xff024eb5),
      20: Color(0xff003d8f),
      30: Color(0xff002f70),
      40: Color(_bluePrimaryValue),
    },
  );
  static const int _bluePrimaryValue = 0xff1761c5;

  // blue tint colors
  static const MaterialColor blueTint = MaterialColor(
    _blueTintPrimaryValue,
    <int, Color>{
      10: Color(_blueTintPrimaryValue),
      20: Color(0xff8ab7f4),
      30: Color(0xffbfd6f6),
      40: Color(0xffe8f2ff),
    },
  );
  static const int _blueTintPrimaryValue = 0xff2e78dc;

  // shade cyan colors [10][20][30]
  // normal 00
  static const MaterialColor cyanShade = MaterialColor(
    _cyanPrimaryValue,
    <int, Color>{
      10: Color(0xff005267),
      20: Color(0xff006f8b),
      30: Color(0xff0bb8e4),
      40: Color(_cyanPrimaryValue),
    },
  );
  static const int _cyanPrimaryValue = 0xff0bb8e4;

  // cyan tint colors
  static const MaterialColor cyanTint = MaterialColor(
    _cyanTintPrimaryValue,
    <int, Color>{
      10: Color(_cyanTintPrimaryValue),
      20: Color(0xff87ddf3),
      30: Color(0xffcaf4ff),
      40: Color(0xffe5f9fe),
    },
  );
  static const int _cyanTintPrimaryValue = 0xff44c8e9;

  // color ink monochrome
  static const Color ink = Color(0xff040c22);
  static const Color inkLight = Color(0xff363d4e);
  static const Color inkLighter = Color(0xff5c616f);
  static const Color inkLightest = Color(0xffa7aab2);

  // color sky monochrome
  static const Color sky = Color(0xffcdd4db);
  static const Color skyLight = Color(0xffdee3e7);
  static const Color skyLighter = Color(0xffe8ebee);
  static const Color skyLightest = Color(0xfff6f7f8);

  // green shade
  static const MaterialColor greenShade = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      10: Color(0xff008859),
      20: Color(0xff006240),
      30: Color(0xff00482f),
      40: Color(_greenPrimaryValue),
    },
  );
  static const int _greenPrimaryValue = 0xff00b167;

  // blue tint colors
  static const MaterialColor greenTint = MaterialColor(
    _greenTintPrimaryValue,
    <int, Color>{
      10: Color(_greenTintPrimaryValue),
      20: Color(0xff4dc895),
      30: Color(0xffa6edcf),
      40: Color(0xffd9f3e8),
    },
  );
  static const int _greenTintPrimaryValue = 0xff26bd7e;

  // orange shade
  static const MaterialColor orangeShade =
      MaterialColor(_orangePrimaryValue, <int, Color>{
    10: Color(0xffd94310),
    20: Color(0xffb12e02),
    30: Color(0xff912400),
    40: Color(_orangePrimaryValue),
  });
  static const int _orangePrimaryValue = 0xfff26333;

  // blue tint colors
  static const MaterialColor orangeTint = MaterialColor(
    _orangeTintPrimaryValue,
    <int, Color>{
      10: Color(_orangeTintPrimaryValue),
      20: Color(0xffffa080),
      30: Color(0xffffc9b8),
      40: Color(0xffffebe4),
    },
  );
  static const int _orangeTintPrimaryValue = 0xfff47a51;

  // red

  static const MaterialColor redShade =
      MaterialColor(_redPrimaryValue, <int, Color>{
    10: Color(0xffde3a3d),
    20: Color(0xffc62b2e),
    30: Color(0xffa0070a),
    40: Color(_redPrimaryValue),
  });
  static const int _redPrimaryValue = 0xfff55053;

  // blue tint colors
  static const MaterialColor redTint = MaterialColor(
    _redTintPrimaryValue,
    <int, Color>{
      10: Color(_redTintPrimaryValue),
      20: Color(0xffff8c8e),
      30: Color(0xfff7b4b5),
      40: Color(0xfffee5e5),
    },
  );
  static const int _redTintPrimaryValue = 0xfff26669;
}
