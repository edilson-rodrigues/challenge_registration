import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/shared/shared.dart';
import 'logo_animation_controller.dart';

class LogoAnimationWidget extends StatefulWidget {
  @override
  _LogoAnimationWidgetState createState() => _LogoAnimationWidgetState();
}

class _LogoAnimationWidgetState
    extends ModularState<LogoAnimationWidget, LogoAnimationController>
    with TickerProviderStateMixin {

  @override
  void initState() {
    controller.animation(this);
    super.initState();
  }

  @override
  void dispose() {
    controller.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: controller.pulseAnimation,
      child: LogoWidget(),
    );
  }
}
