import 'package:app_dictionary/common/dictionary/dictionary.dart';

class RepositoryAuth {
  final remoteDataSource = AuthDataSource();

  Stream<User?> authUsers() {
    return remoteDataSource.authUsers;
  }

  Future<Either<Failures, Unit>> signIn(
      String email, String password, GlobalKey<FormState> key) {
    return remoteDataSource.signIn(email, password, key);
  }

  Future<Either<Failures, Unit>> signUp(
      String email, String password, GlobalKey<FormState> key) {
    return remoteDataSource.signUp(email, password, key);
  }

  Future signOut() {
    return remoteDataSource.signOut;
  }
}
