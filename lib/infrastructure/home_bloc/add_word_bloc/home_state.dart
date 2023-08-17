import 'package:app_dictionary/common/error/failure.dart';
import 'package:app_dictionary/data/model/local_model/local_word_model.dart';

abstract class HomeState {}

class InitialState extends HomeState {}

class LoadingState extends HomeState {}

class LoadedHomeState extends HomeState {
  final List<LocalWordModel> listOfWords;

  LoadedHomeState(this.listOfWords);
}

class FailState extends HomeState {
  final Failures failure;

  FailState(this.failure);
}
