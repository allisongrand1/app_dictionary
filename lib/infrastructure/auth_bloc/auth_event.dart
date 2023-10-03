import 'package:app_dictionary/common/dictionary/dictionary.dart';

abstract class AuthEvent {}

class InitialSignInAuthEvent extends AuthEvent {}

class InitialSignUpAuthEvent extends AuthEvent {}

class LogInAuthEvent extends AuthEvent {
  final String email;
  final String password;
  final GlobalKey<FormState> key;

  LogInAuthEvent(
      {required this.email, required this.password, required this.key});
}

class SignUpAuthEvent extends AuthEvent {
  final String email;
  final String password;
  final GlobalKey<FormState> key;

  SignUpAuthEvent(
      {required this.email, required this.password, required this.key});
}

class SignOutAuthEvent extends AuthEvent {}
