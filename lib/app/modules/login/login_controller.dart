import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/shared/auth/auth_controller.dart';
import 'package:challenge_registration/app/shared/shared.dart';

class LoginController {
  AuthController authController;
  SharedLocalStorageServices sharedLocalStorageServices;

  LoginController(
    this.authController,
    this.sharedLocalStorageServices,
  );

  void loginWithPasswordUser(List<dynamic> auth) async {
    var isValid = await authController.loginWithPasswordUser(auth);
    if (isValid) {
      await sharedLocalStorageServices.put('auth', auth);
      await Modular.to.pushReplacementNamed('/product/');
    }
  }
}
