import 'package:flutter_modular/flutter_modular.dart';

import 'package:challenge_registration/app/shared/services/local_storage_service/local_storage_service.dart';
import 'repositories/auth_repository_interface.dart';

class AuthController {
  final IAuthRepository _authRepository = Modular.get();
  final ILocalStorage _iLocalStorage = Modular.get();

  Future<bool> loginWithPasswordUser(List<dynamic> auth) async {
    return await _authRepository.loginWithPasswordUser(auth);
  }

  Future<void> loginWithLocalStorage() async {
    print('CHECK LOCAL STORAGE');
    // get credentials in local storage
    var localAuth = await _iLocalStorage.get('auth');

    try {
      // validate
      await _authRepository.loginWithPasswordUser(localAuth).then((isValid) => {
            print('IS_VALID AUTH $isValid'),
            if (isValid)
              {
                print('AUTH LOCAL STORAGE VALID'),
                Modular.to.pushReplacementNamed('/home/'),
              }
            else
              {
                print('AUTH LOCAL STORAGE INVALID'),
                Modular.to.pushReplacementNamed('/login/'),
              }
          });
    } catch (err) {
      print('AUTH LOCAL STORAGE NULL');
      await Modular.to.pushReplacementNamed('/login/');
    }
  }
}
