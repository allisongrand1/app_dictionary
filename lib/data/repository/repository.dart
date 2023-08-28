import 'package:app_dictionary/common/error/failure.dart';
import 'package:app_dictionary/data/model/local_model/local_word_model.dart';
import 'package:app_dictionary/data/model/remote_model/remote_word_model.dart';
import 'package:app_dictionary/data/server/server.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failures, dynamic>> getInfo(dynamic search);
}

//обработка информации по новому слову
class NewRemoteWordModelRepository extends Repository {
  final RemoteDataSource remoteDataSource;
  NewRemoteWordModelRepository(this.remoteDataSource);
  @override
  Future<Either<Failures, RemoteWordModel>> getInfo(dynamic search) async {
    return await remoteDataSource.getInfoWord(search: search);
  }
}

//обработка информации по добавленному слову
class RemoteWordModelRepository extends Repository {
  final RemoteDataSource remoteDataSource;
  RemoteWordModelRepository(this.remoteDataSource);

  @override
  Future<Either<Failures, RemoteWordModel>> getInfo(dynamic search) async {
    throw UnimplementedError();
    /* return await _remoteDataSource.getInfoWord(search: search); */
  }
}

//работа со списком слов
class HomePageRepository extends Repository {
  final RemoteDataSource remoteDataSource;
  HomePageRepository(this.remoteDataSource);

  @override
  Future<Either<Failures, List<LocalWordModel>>> getInfo(dynamic search) async {
    return remoteDataSource.getListWords();
  }
}