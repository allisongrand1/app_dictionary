import 'package:app_dictionary/common/error/failure.dart';

abstract class HomeState {}

class InitialState extends HomeState {}

class LoadingState extends HomeState {}

class LoadedHomeState extends HomeState {}

class FailState extends HomeState {
  final Failures failure;

  FailState(this.failure);
}
