import 'package:flutter_modular/flutter_modular.dart';
import '../../../app/shared/shared.dart';

class LoginController {
  AuthController authController = Modular.get();
  SharedLocalStorageServices sharedLocalStorageServices = Modular.get();

  void loginWithPasswordUser(List<dynamic> auth) async {
    var isValid = await authController.loginWithPasswordUser(auth);
    if (isValid) {
      await sharedLocalStorageServices.put('auth', auth);
      await Modular.to.pushReplacementNamed('/product/');
    }
  }
}
