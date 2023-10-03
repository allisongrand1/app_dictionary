import 'package:app_dictionary/common/dictionary/dictionary.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RepositoryAuth repositoryAuth;
  AuthBloc(this.repositoryAuth)
      : super(InitialSignInAuthState(streamUsers: repositoryAuth.authUsers())) {
    on<InitialSignInAuthEvent>((event, emit) =>
        emit(InitialSignInAuthState(streamUsers: repositoryAuth.authUsers())));
    on<InitialSignUpAuthEvent>((event, emit) => emit(InitialSignUpAuthState()));
    on<LogInAuthEvent>((event, emit) async {
      final signIn =
          await repositoryAuth.signIn(event.email, event.password, event.key);
      signIn.fold(
          (l) => emit(FailAuthState(l)),
          (r) => emit(
              InitialSignInAuthState(streamUsers: repositoryAuth.authUsers())));
    });
    on<SignUpAuthEvent>((event, emit) async {
      final signIn =
          await repositoryAuth.signUp(event.email, event.password, event.key);
      signIn.fold(
          (l) => emit(FailAuthState(l)),
          (r) => emit(
              InitialSignInAuthState(streamUsers: repositoryAuth.authUsers())));
    });
    on<SignOutAuthEvent>((event, emit) async {
      await repositoryAuth.signOut();
      emit(InitialSignInAuthState(streamUsers: repositoryAuth.authUsers()));
    });
  }
}
