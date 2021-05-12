import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/core/core.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenge Registration',
      theme: AppTheme(context).defaultTheme,
    ).modular();
  }
}
