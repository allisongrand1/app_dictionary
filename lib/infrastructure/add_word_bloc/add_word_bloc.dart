import 'package:app_dictionary/data/repository/repository.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_event.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddWordBloc extends Bloc<AddWordEvent, AddWordState> {
  final Repository _repository;
  AddWordBloc(this._repository) : super(InitialState()) {
    on<FindWordEvent>((event, emit) async {
      final word = await _repository.getWord(event.search);

      word.fold((failure) => emit(FailState(failure)),
          (r) => emit(LoadedNewWordState()));
    });
  }
}
