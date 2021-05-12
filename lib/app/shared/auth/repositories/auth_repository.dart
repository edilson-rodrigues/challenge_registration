import 'package:challenge_registration/app/shared/auth/repositories/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<bool> loginWithPasswordUser(List<dynamic> auth) async {
    if (auth[0] == '123456' && auth[1] == '123456') {
      return true;
    } else {
      return false;
    }
  }
}
