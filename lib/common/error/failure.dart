// All the possible types of WeatherState have to be specified here
// The package supports Union9 at max (9 types)

import 'package:sealed_unions/sealed_unions.dart';

abstract class Failure {}

class Failures extends Union4Impl<_RequestFailure, _ServerFailure,
    _CacheFailure, _UnknownFailure> implements Failure {
  // PRIVATE low-level factory
  // Used for instantiating individual "subclasses"
  static const Quartet<_RequestFailure, _ServerFailure, _CacheFailure,
          _UnknownFailure> _factory =
      Quartet<_RequestFailure, _ServerFailure, _CacheFailure,
          _UnknownFailure>();

  // PRIVATE constructor which takes in the individual weather states
  Failures._(
    Union4<_RequestFailure, _ServerFailure, _CacheFailure, _UnknownFailure>
        union,
  ) : super(union);

  // PUBLIC factories which hide the complexity from outside classes
  factory Failures.server() => Failures._(_factory.second(_ServerFailure()));

  factory Failures.request() => Failures._(_factory.first(_RequestFailure()));

  factory Failures.cache() => Failures._(_factory.third(_CacheFailure()));

  factory Failures.unknown({String? description}) =>
      Failures._(_factory.fourth(_UnknownFailure(description: description)));
}

class _ServerFailure implements Exception {}

class _CacheFailure implements Exception {}

class _RequestFailure implements Exception {}

class _UnknownFailure implements Exception {
  final String? description;

  _UnknownFailure({this.description});
}

String failureText(Failures failure) =>
    "Не удалось загрузить. ${failure.join(
      (request) => 'Ошибка в запросе',
      (server) => 'Ошибка сервера',
      (cache) => '',
      (unknown) => 'Неизвестная ошибка',
    )}";