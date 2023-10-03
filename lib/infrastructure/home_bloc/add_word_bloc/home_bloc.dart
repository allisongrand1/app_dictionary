import 'package:app_dictionary/common/dictionary/dictionary.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomePageRepository _repository;
  HomeBloc(this._repository) : super(InitialState()) {
    on<DowloandHomePageEvent>((event, emit) async {
      emit(LoadingState());
      final listOfWords = await _repository.getInfo('');
      listOfWords.fold(
          (l) => emit(FailState(l)), (r) => emit(LoadedHomeState(r)));
    });
  }
}
