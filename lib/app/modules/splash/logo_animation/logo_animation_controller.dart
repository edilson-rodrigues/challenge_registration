import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LogoAnimationController {
  late AnimationController animationController;
  late Animation<double> pulseAnimation;

  void animation(TickerProvider vsync) {
    animationController = AnimationController(
      vsync: vsync,
      duration: Duration(milliseconds: 500),
    );

    pulseAnimation =
        Tween<double>(begin: 1.0, end: 1.2).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeIn,
    ));

    pulseAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      }

      if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });

    animationController.forward();
  }
}
