import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/modules/splash/logo_animation/logo_animation_controller.dart';
import 'package:challenge_registration/app/modules/splash/splash_controller.dart';
import 'package:challenge_registration/app/modules/splash/splash_page.dart';
import 'package:challenge_registration/app/shared/shared.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => SplashController()),
    Bind((i) => LogoAnimationController()),
    Bind<IAuthRepository>((i) => AuthRepository()),
    Bind((i) => AuthController(i(), i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
  ];
}
