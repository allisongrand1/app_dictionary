import 'package:app_dictionary/data/repository/repository.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_event.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository _repository;
  HomeBloc(this._repository) : super(InitialState()) {
    on<DowloandHomePageEvent>((event, emit) async {});
  }
}
