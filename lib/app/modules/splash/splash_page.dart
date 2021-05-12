import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'logo_animation/logo_animation_widget.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ModularState<SplashPage, SplashController>
    with TickerProviderStateMixin {
  @override
  void initState() {
    controller.pushModule();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LogoAnimationWidget(),
      ),
    );
  }
}
