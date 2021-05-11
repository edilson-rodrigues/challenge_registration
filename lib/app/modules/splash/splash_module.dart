import 'package:flutter_modular/flutter_modular.dart';
import '../../../app/modules/splash/logo_animation/logo_animation_controller.dart';
import '../../../app/modules/splash/splash_controller.dart';
import '../../../app/modules/splash/splash_page.dart';
import '../../../app/shared/shared.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => SplashController()),
    Bind((i) => LogoAnimationController()),
    Bind<IAuthRepository>((i) => AuthRepository()),
    Bind((i) => AuthController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashPage()),
  ];
}
