abstract class IAuthRepository {
  Future<bool> loginWithPasswordUser(List<dynamic> auth);
}
