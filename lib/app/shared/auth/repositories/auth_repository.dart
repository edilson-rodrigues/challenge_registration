import 'auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<bool> loginWithPasswordUser(List<dynamic> auth) async {
    // check inputs - login and passwd
    if (auth[0] == '123456' && auth[1] == '123456') {
      return true;
    } else {
      return false;
    }
  }
}
