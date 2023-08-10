import 'package:app_dictionary/common/error/failure.dart';
import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:app_dictionary/data/server/server.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failures, RemoteWordModel>> getWord(String search);
}

class NewRemoteWordModelRepository extends Repository {
  RemoteDataSource _remoteDataSource;

  NewRemoteWordModelRepository(this._remoteDataSource);
  @override
  Future<Either<Failures, RemoteWordModel>> getWord(String search) async {
    return await _remoteDataSource.getInfoWord(search: search);
  }
}

class RemoteWordModelRepository extends Repository {
  RemoteDataSource _remoteDataSource;

  RemoteWordModelRepository(this._remoteDataSource);

  @override
  Future<Either<Failures, RemoteWordModel>> getWord(String search) async {
    throw UnimplementedError();
    /* return await _remoteDataSource.getInfoWord(search: search); */
  }
}

class HomePageRepository {
  RemoteDataSource _remoteDataSource;

  HomePageRepository(this._remoteDataSource);

  Future<Either<Failures, RemoteWordModel>> getListOfWords() async {
    return await _remoteDataSource.getListWords();
  }
}
