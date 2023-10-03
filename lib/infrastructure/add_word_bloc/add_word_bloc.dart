import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_event.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_state.dart';

class AddWordBloc extends Bloc<AddWordEvent, AddWordState> {
  final Repository _repository;
  AddWordBloc(this._repository) : super(InitialState()) {
    on<FindWordEvent>((event, emit) async {
      emit(LoadingState());

      final word = await _repository.getInfo(event.search);

      word.fold((failure) => emit(FailState(failure)),
          (r) => emit(LoadedNewWordState(r)));
    });
  }
}
