import 'package:challenge_registration/app/shared/auth/auth_controller.dart';

class SplashController {
  final AuthController authController;

  SplashController(this.authController);

  Future<void> pushModule() async {
    await Future.delayed(Duration(seconds: 2))
        .then((_) => authController.loginWithLocalStorage());
  }
}
