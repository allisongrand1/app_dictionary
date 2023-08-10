import 'package:app_dictionary/common/error/failure.dart';

abstract class AddWordState {}

class InitialState extends AddWordState {}

class LoadingState extends AddWordState {}

class LoadedNewWordState extends AddWordState {}

class FailState extends AddWordState {
  final Failures failure;

  FailState(this.failure);
}
