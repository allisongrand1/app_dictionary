import 'package:app_dictionary/data/model/local_model/local_word_model.dart';
import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:dartz/dartz.dart';
import 'package:app_dictionary/common/error/failure.dart';
import 'package:app_dictionary/common/constants/constant.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  ///* [getInfoWord] - получение данных о слове
  Future<Either<Failures, RemoteWordModel>> getInfoWord(
      {required String search});

  ///* [getListWords] - получение списка созданных слов
  Future<Either<Failures, List<LocalWordModel>>> getListWords();

  ///* [addInList] - добавить слово в список
  // Future<List<LocalWordModel>> addInList();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final Dio _dio;

  RemoteDataSourceImpl(this._dio);
  @override
  Future<Either<Failures, RemoteWordModel>> getInfoWord(
      {required String search}) async {
    try {
      final response = await _dio
          .get('https://api.dictionaryapi.dev/api/v2/entries/en/${search}');
      if (response.statusCode == 200) {
        final body = response.data as RemoteWordModel;
        log.i('Get Word [${search}] from api');
        return right(body);
      } else {
        log.e("Exception: Can't Get Word [${search}] from api");
        return left(Failures.unknown(description: 'Status code is not 200'));
      }
    } on DioException catch (e) {
      return left(Failures.unknown(description: e.toString()));
    } on Exception catch (e) {
      throw left(Failures.server());
    }
  }

  @override
  Future<Either<Failures, List<LocalWordModel>>> getListWords() {
    // TODO: implement addInList
    throw UnimplementedError();
  }

  /* @override
  Future<List<LocalWordModel>> addInList(LocalWordModel localWordModel) {} */
}
