import 'package:app_dictionary/common/error/failure.dart';
import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';

abstract class AddWordState {}

class InitialState extends AddWordState {}

class LoadingState extends AddWordState {}

class LoadedNewWordState extends AddWordState {
  final RemoteWordModel word;

  LoadedNewWordState(this.word);
}

class FailState extends AddWordState {
  final Failures failure;

  FailState(this.failure);
}
