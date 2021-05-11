import 'package:flutter_modular/flutter_modular.dart';
import 'repositories/auth_repository_interface.dart';
import '../shared.dart';

class AuthController {
  final IAuthRepository _authRepository = Modular.get();
  final ILocalStorage _iLocalStorage = Modular.get();

  Future<bool> loginWithPasswordUser(List<dynamic> auth) async {
    return await _authRepository.loginWithPasswordUser(auth);
  }

  Future<void> loginWithLocalStorage() async {
    // get credentials in local storage
    var localAuth = await _iLocalStorage.get('auth');

    try {
      await _authRepository.loginWithPasswordUser(localAuth).then((isValid) => {
            if (isValid)
              {
                Modular.to.pushReplacementNamed('/product/'),
              }
            else
              {
                Modular.to.pushReplacementNamed('/login/'),
              }
          });
    } catch (err) {
      await Modular.to.pushReplacementNamed('/login/');
    }
  }
}
