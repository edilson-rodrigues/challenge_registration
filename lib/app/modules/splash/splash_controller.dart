import 'package:challenge_registration/app/shared/auth/auth_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  final AuthController authController = Modular.get();

  Future<void> pushModule() async {
    await Future.delayed(Duration(seconds: 2))
        .then((_) => authController.loginWithLocalStorage());
  }
}
