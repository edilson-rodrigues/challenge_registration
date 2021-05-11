import 'package:flutter_modular/flutter_modular.dart';
import '../../../app/shared/auth/auth_controller.dart';

class SplashController {
  final AuthController authController = Modular.get();

  Future<void> pushModule() async {
    await Future.delayed(Duration(seconds: 2))
        .then((_) => authController.loginWithLocalStorage());
  }
}
