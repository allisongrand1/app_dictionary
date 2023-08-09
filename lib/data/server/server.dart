import 'package:dartz/dartz.dart';
import 'package:app_dictionary/data/model/word_model.dart';

abstract class RemoteDataSource {
  ///* [getInfoWord] - получение данных о слове
  Future<Either<Failure, WordModel>> getInfoWord();
}
