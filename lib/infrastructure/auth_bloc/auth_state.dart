import 'package:app_dictionary/common/dictionary/dictionary.dart';

abstract class AuthState {}

class InitialSignInAuthState extends AuthState {
  Stream streamUsers;

  InitialSignInAuthState({required this.streamUsers});
}

class InitialSignUpAuthState extends AuthState {}

class LogInAuthState extends AuthState {
  final Future signIn;
  LogInAuthState({required this.signIn});
}

class SignUpAuthState extends AuthState {
  final Future signUp;
  SignUpAuthState({required this.signUp});
}

class FailAuthState extends AuthState {
  final Failures failure;

  FailAuthState(this.failure);
}
