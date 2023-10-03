import 'package:app_dictionary/config.dart';
import 'package:app_dictionary/data/repository/repository.dart';
import 'package:app_dictionary/data/server/server.dart';
import 'package:app_dictionary/infrastructure/add_word_bloc/add_word_bloc.dart';
import 'package:app_dictionary/infrastructure/home_bloc/add_word_bloc/home_bloc.dart';
import 'package:dio/dio.dart';

import 'common/dictionary/dictionary.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void registerServices() {
  // Dio
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );

  // getIt.registerLazySingleton(() => GraphQLClient(link: link, cache: cache));

  // Logger
  getIt.registerLazySingleton<Logger>(() => Logger());

  // Datasources
  getIt.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(getIt()));
  getIt.registerLazySingleton<AuthDataSource>(() => AuthDataSource());

  // Repositories
  getIt.registerLazySingleton<NewRemoteWordModelRepository>(
      () => NewRemoteWordModelRepository(
            getIt(),
          ));
  getIt.registerLazySingleton<RemoteWordModelRepository>(
      () => RemoteWordModelRepository(
            getIt(),
          ));
  getIt.registerLazySingleton<HomePageRepository>(() => HomePageRepository(
        getIt(),
      ));
  getIt.registerLazySingleton<RepositoryAuth>(() => RepositoryAuth());

  // BLoCs
  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt<HomePageRepository>()));
  getIt.registerFactory<AddWordBloc>(
      () => AddWordBloc(getIt<NewRemoteWordModelRepository>()));
  getIt.registerFactory<AuthBloc>(() => AuthBloc(getIt()));
/*   // Hive Register Adapters
  // First init enum
  Hive.registerAdapter(OrderStatusAdapter());
  // Second init sub classes
  Hive.registerAdapter(EAdapter());
  // Third init Ui models
  Hive.registerAdapter(HiveDictionaryOrderWorkTypeModelAdapter());
  // Fourth init main classes
  Hive.registerAdapter(UserAdapter());

  // Datasources
  getIt.registerLazySingleton<HiveLocalDatasource>(
      () => HiveLocalDatasourceImpl());

  // Repositories
  getIt.registerLazySingleton<OrderRepository>(
      () => OrderRepositoryImpl(getIt(), getIt(), getIt()));

  // BLoCs
  getIt.registerFactory(() => HomeTabBloc(getIt(), getIt())); */
}
