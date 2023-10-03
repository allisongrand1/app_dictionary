import 'package:app_dictionary/common/dictionary/dictionary.dart';

class AuthDataSource {
  final _auth = FirebaseAuth.instance;
  //следит за состоянием пользователя
  Stream<User?> get authUsers => _auth.authStateChanges();
  Future<void> get signOut => FirebaseAuth.instance.signOut();

  Future<Either<Failures, Unit>> signIn(
      String email, String password, GlobalKey<FormState> key) async {
    final isValid = key.currentState!.validate();
    if (!isValid) return left(Failures.unknown(description: 'Не валидно'));
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(Failures.unknown(description: e.message.toString()));
    }
  }

  Future<Either<Failures, Unit>> signUp(
      String email, String password, GlobalKey<FormState> key) async {
    final isValid = key.currentState!.validate();
    if (!isValid) return left(Failures.unknown(description: 'Не валидно'));
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      return left(Failures.unknown(description: e.toString()));
    }
  }
}
