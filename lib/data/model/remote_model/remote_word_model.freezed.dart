// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteWordModel _$RemoteWordModelFromJson(Map<String, dynamic> json) {
  return _RemoteWordModel.fromJson(json);
}

/// @nodoc
mixin _$RemoteWordModel {
  RemoteWordModelDetailed get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteWordModelCopyWith<RemoteWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteWordModelCopyWith<$Res> {
  factory $RemoteWordModelCopyWith(
          RemoteWordModel value, $Res Function(RemoteWordModel) then) =
      _$RemoteWordModelCopyWithImpl<$Res, RemoteWordModel>;
  @useResult
  $Res call({RemoteWordModelDetailed model});

  $RemoteWordModelDetailedCopyWith<$Res> get model;
}

/// @nodoc
class _$RemoteWordModelCopyWithImpl<$Res, $Val extends RemoteWordModel>
    implements $RemoteWordModelCopyWith<$Res> {
  _$RemoteWordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RemoteWordModelDetailed,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteWordModelDetailedCopyWith<$Res> get model {
    return $RemoteWordModelDetailedCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteWordModelCopyWith<$Res>
    implements $RemoteWordModelCopyWith<$Res> {
  factory _$$_RemoteWordModelCopyWith(
          _$_RemoteWordModel value, $Res Function(_$_RemoteWordModel) then) =
      __$$_RemoteWordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoteWordModelDetailed model});

  @override
  $RemoteWordModelDetailedCopyWith<$Res> get model;
}

/// @nodoc
class __$$_RemoteWordModelCopyWithImpl<$Res>
    extends _$RemoteWordModelCopyWithImpl<$Res, _$_RemoteWordModel>
    implements _$$_RemoteWordModelCopyWith<$Res> {
  __$$_RemoteWordModelCopyWithImpl(
      _$_RemoteWordModel _value, $Res Function(_$_RemoteWordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_RemoteWordModel(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as RemoteWordModelDetailed,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteWordModel implements _RemoteWordModel {
  const _$_RemoteWordModel({required this.model});

  factory _$_RemoteWordModel.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteWordModelFromJson(json);

  @override
  final RemoteWordModelDetailed model;

  @override
  String toString() {
    return 'RemoteWordModel(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteWordModel &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteWordModelCopyWith<_$_RemoteWordModel> get copyWith =>
      __$$_RemoteWordModelCopyWithImpl<_$_RemoteWordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteWordModelToJson(
      this,
    );
  }
}

abstract class _RemoteWordModel implements RemoteWordModel {
  const factory _RemoteWordModel(
      {required final RemoteWordModelDetailed model}) = _$_RemoteWordModel;

  factory _RemoteWordModel.fromJson(Map<String, dynamic> json) =
      _$_RemoteWordModel.fromJson;

  @override
  RemoteWordModelDetailed get model;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteWordModelCopyWith<_$_RemoteWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoteWordModelDetailed _$RemoteWordModelDetailedFromJson(
    Map<String, dynamic> json) {
  return _RemoteWordModelDetailed.fromJson(json);
}

/// @nodoc
mixin _$RemoteWordModelDetailed {
  String get word => throw _privateConstructorUsedError;
  List<PhoneticsDetailed> get phonetics => throw _privateConstructorUsedError;
  List<MeaningsDetailed> get meanings => throw _privateConstructorUsedError;
  LicenseDetailed get license => throw _privateConstructorUsedError;
  List<String> get sourceUrls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteWordModelDetailedCopyWith<RemoteWordModelDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteWordModelDetailedCopyWith<$Res> {
  factory $RemoteWordModelDetailedCopyWith(RemoteWordModelDetailed value,
          $Res Function(RemoteWordModelDetailed) then) =
      _$RemoteWordModelDetailedCopyWithImpl<$Res, RemoteWordModelDetailed>;
  @useResult
  $Res call(
      {String word,
      List<PhoneticsDetailed> phonetics,
      List<MeaningsDetailed> meanings,
      LicenseDetailed license,
      List<String> sourceUrls});

  $LicenseDetailedCopyWith<$Res> get license;
}

/// @nodoc
class _$RemoteWordModelDetailedCopyWithImpl<$Res,
        $Val extends RemoteWordModelDetailed>
    implements $RemoteWordModelDetailedCopyWith<$Res> {
  _$RemoteWordModelDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetics = null,
    Object? meanings = null,
    Object? license = null,
    Object? sourceUrls = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetics: null == phonetics
          ? _value.phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<PhoneticsDetailed>,
      meanings: null == meanings
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<MeaningsDetailed>,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as LicenseDetailed,
      sourceUrls: null == sourceUrls
          ? _value.sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LicenseDetailedCopyWith<$Res> get license {
    return $LicenseDetailedCopyWith<$Res>(_value.license, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RemoteWordModelDetailedCopyWith<$Res>
    implements $RemoteWordModelDetailedCopyWith<$Res> {
  factory _$$_RemoteWordModelDetailedCopyWith(_$_RemoteWordModelDetailed value,
          $Res Function(_$_RemoteWordModelDetailed) then) =
      __$$_RemoteWordModelDetailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      List<PhoneticsDetailed> phonetics,
      List<MeaningsDetailed> meanings,
      LicenseDetailed license,
      List<String> sourceUrls});

  @override
  $LicenseDetailedCopyWith<$Res> get license;
}

/// @nodoc
class __$$_RemoteWordModelDetailedCopyWithImpl<$Res>
    extends _$RemoteWordModelDetailedCopyWithImpl<$Res,
        _$_RemoteWordModelDetailed>
    implements _$$_RemoteWordModelDetailedCopyWith<$Res> {
  __$$_RemoteWordModelDetailedCopyWithImpl(_$_RemoteWordModelDetailed _value,
      $Res Function(_$_RemoteWordModelDetailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetics = null,
    Object? meanings = null,
    Object? license = null,
    Object? sourceUrls = null,
  }) {
    return _then(_$_RemoteWordModelDetailed(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      phonetics: null == phonetics
          ? _value._phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<PhoneticsDetailed>,
      meanings: null == meanings
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<MeaningsDetailed>,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as LicenseDetailed,
      sourceUrls: null == sourceUrls
          ? _value._sourceUrls
          : sourceUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteWordModelDetailed implements _RemoteWordModelDetailed {
  const _$_RemoteWordModelDetailed(
      {required this.word,
      required final List<PhoneticsDetailed> phonetics,
      required final List<MeaningsDetailed> meanings,
      required this.license,
      required final List<String> sourceUrls})
      : _phonetics = phonetics,
        _meanings = meanings,
        _sourceUrls = sourceUrls;

  factory _$_RemoteWordModelDetailed.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteWordModelDetailedFromJson(json);

  @override
  final String word;
  final List<PhoneticsDetailed> _phonetics;
  @override
  List<PhoneticsDetailed> get phonetics {
    if (_phonetics is EqualUnmodifiableListView) return _phonetics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_phonetics);
  }

  final List<MeaningsDetailed> _meanings;
  @override
  List<MeaningsDetailed> get meanings {
    if (_meanings is EqualUnmodifiableListView) return _meanings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meanings);
  }

  @override
  final LicenseDetailed license;
  final List<String> _sourceUrls;
  @override
  List<String> get sourceUrls {
    if (_sourceUrls is EqualUnmodifiableListView) return _sourceUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sourceUrls);
  }

  @override
  String toString() {
    return 'RemoteWordModelDetailed(word: $word, phonetics: $phonetics, meanings: $meanings, license: $license, sourceUrls: $sourceUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteWordModelDetailed &&
            (identical(other.word, word) || other.word == word) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality()
                .equals(other._sourceUrls, _sourceUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings),
      license,
      const DeepCollectionEquality().hash(_sourceUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteWordModelDetailedCopyWith<_$_RemoteWordModelDetailed>
      get copyWith =>
          __$$_RemoteWordModelDetailedCopyWithImpl<_$_RemoteWordModelDetailed>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteWordModelDetailedToJson(
      this,
    );
  }
}

abstract class _RemoteWordModelDetailed implements RemoteWordModelDetailed {
  const factory _RemoteWordModelDetailed(
      {required final String word,
      required final List<PhoneticsDetailed> phonetics,
      required final List<MeaningsDetailed> meanings,
      required final LicenseDetailed license,
      required final List<String> sourceUrls}) = _$_RemoteWordModelDetailed;

  factory _RemoteWordModelDetailed.fromJson(Map<String, dynamic> json) =
      _$_RemoteWordModelDetailed.fromJson;

  @override
  String get word;
  @override
  List<PhoneticsDetailed> get phonetics;
  @override
  List<MeaningsDetailed> get meanings;
  @override
  LicenseDetailed get license;
  @override
  List<String> get sourceUrls;
  @override
  @JsonKey(ignore: true)
  _$$_RemoteWordModelDetailedCopyWith<_$_RemoteWordModelDetailed>
      get copyWith => throw _privateConstructorUsedError;
}

PhoneticsDetailed _$PhoneticsDetailedFromJson(Map<String, dynamic> json) {
  return _PhoneticsDetailed.fromJson(json);
}

/// @nodoc
mixin _$PhoneticsDetailed {
  String? get text => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  String? get sourceUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get license => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneticsDetailedCopyWith<PhoneticsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneticsDetailedCopyWith<$Res> {
  factory $PhoneticsDetailedCopyWith(
          PhoneticsDetailed value, $Res Function(PhoneticsDetailed) then) =
      _$PhoneticsDetailedCopyWithImpl<$Res, PhoneticsDetailed>;
  @useResult
  $Res call(
      {String? text,
      String? audio,
      String? sourceUrl,
      Map<String, dynamic>? license});
}

/// @nodoc
class _$PhoneticsDetailedCopyWithImpl<$Res, $Val extends PhoneticsDetailed>
    implements $PhoneticsDetailedCopyWith<$Res> {
  _$PhoneticsDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audio = freezed,
    Object? sourceUrl = freezed,
    Object? license = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneticsDetailedCopyWith<$Res>
    implements $PhoneticsDetailedCopyWith<$Res> {
  factory _$$_PhoneticsDetailedCopyWith(_$_PhoneticsDetailed value,
          $Res Function(_$_PhoneticsDetailed) then) =
      __$$_PhoneticsDetailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? text,
      String? audio,
      String? sourceUrl,
      Map<String, dynamic>? license});
}

/// @nodoc
class __$$_PhoneticsDetailedCopyWithImpl<$Res>
    extends _$PhoneticsDetailedCopyWithImpl<$Res, _$_PhoneticsDetailed>
    implements _$$_PhoneticsDetailedCopyWith<$Res> {
  __$$_PhoneticsDetailedCopyWithImpl(
      _$_PhoneticsDetailed _value, $Res Function(_$_PhoneticsDetailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? audio = freezed,
    Object? sourceUrl = freezed,
    Object? license = freezed,
  }) {
    return _then(_$_PhoneticsDetailed(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value._license
          : license // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhoneticsDetailed implements _PhoneticsDetailed {
  const _$_PhoneticsDetailed(
      {required this.text,
      required this.audio,
      required this.sourceUrl,
      required final Map<String, dynamic>? license})
      : _license = license;

  factory _$_PhoneticsDetailed.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneticsDetailedFromJson(json);

  @override
  final String? text;
  @override
  final String? audio;
  @override
  final String? sourceUrl;
  final Map<String, dynamic>? _license;
  @override
  Map<String, dynamic>? get license {
    final value = _license;
    if (value == null) return null;
    if (_license is EqualUnmodifiableMapView) return _license;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PhoneticsDetailed(text: $text, audio: $audio, sourceUrl: $sourceUrl, license: $license)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneticsDetailed &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            const DeepCollectionEquality().equals(other._license, _license));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, audio, sourceUrl,
      const DeepCollectionEquality().hash(_license));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneticsDetailedCopyWith<_$_PhoneticsDetailed> get copyWith =>
      __$$_PhoneticsDetailedCopyWithImpl<_$_PhoneticsDetailed>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneticsDetailedToJson(
      this,
    );
  }
}

abstract class _PhoneticsDetailed implements PhoneticsDetailed {
  const factory _PhoneticsDetailed(
      {required final String? text,
      required final String? audio,
      required final String? sourceUrl,
      required final Map<String, dynamic>? license}) = _$_PhoneticsDetailed;

  factory _PhoneticsDetailed.fromJson(Map<String, dynamic> json) =
      _$_PhoneticsDetailed.fromJson;

  @override
  String? get text;
  @override
  String? get audio;
  @override
  String? get sourceUrl;
  @override
  Map<String, dynamic>? get license;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneticsDetailedCopyWith<_$_PhoneticsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

MeaningsDetailed _$MeaningsDetailedFromJson(Map<String, dynamic> json) {
  return _MeaningsDetailed.fromJson(json);
}

/// @nodoc
mixin _$MeaningsDetailed {
  String? get partOfSpeech => throw _privateConstructorUsedError;
  List<DefinitionsDetailed> get definitions =>
      throw _privateConstructorUsedError;
  List<String?> get synonyms => throw _privateConstructorUsedError;
  List<String?> get antonyms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeaningsDetailedCopyWith<MeaningsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningsDetailedCopyWith<$Res> {
  factory $MeaningsDetailedCopyWith(
          MeaningsDetailed value, $Res Function(MeaningsDetailed) then) =
      _$MeaningsDetailedCopyWithImpl<$Res, MeaningsDetailed>;
  @useResult
  $Res call(
      {String? partOfSpeech,
      List<DefinitionsDetailed> definitions,
      List<String?> synonyms,
      List<String?> antonyms});
}

/// @nodoc
class _$MeaningsDetailedCopyWithImpl<$Res, $Val extends MeaningsDetailed>
    implements $MeaningsDetailedCopyWith<$Res> {
  _$MeaningsDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = freezed,
    Object? definitions = null,
    Object? synonyms = null,
    Object? antonyms = null,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: freezed == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String?,
      definitions: null == definitions
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<DefinitionsDetailed>,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      antonyms: null == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeaningsDetailedCopyWith<$Res>
    implements $MeaningsDetailedCopyWith<$Res> {
  factory _$$_MeaningsDetailedCopyWith(
          _$_MeaningsDetailed value, $Res Function(_$_MeaningsDetailed) then) =
      __$$_MeaningsDetailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? partOfSpeech,
      List<DefinitionsDetailed> definitions,
      List<String?> synonyms,
      List<String?> antonyms});
}

/// @nodoc
class __$$_MeaningsDetailedCopyWithImpl<$Res>
    extends _$MeaningsDetailedCopyWithImpl<$Res, _$_MeaningsDetailed>
    implements _$$_MeaningsDetailedCopyWith<$Res> {
  __$$_MeaningsDetailedCopyWithImpl(
      _$_MeaningsDetailed _value, $Res Function(_$_MeaningsDetailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partOfSpeech = freezed,
    Object? definitions = null,
    Object? synonyms = null,
    Object? antonyms = null,
  }) {
    return _then(_$_MeaningsDetailed(
      partOfSpeech: freezed == partOfSpeech
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String?,
      definitions: null == definitions
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<DefinitionsDetailed>,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      antonyms: null == antonyms
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeaningsDetailed implements _MeaningsDetailed {
  const _$_MeaningsDetailed(
      {required this.partOfSpeech,
      required final List<DefinitionsDetailed> definitions,
      required final List<String?> synonyms,
      required final List<String?> antonyms})
      : _definitions = definitions,
        _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$_MeaningsDetailed.fromJson(Map<String, dynamic> json) =>
      _$$_MeaningsDetailedFromJson(json);

  @override
  final String? partOfSpeech;
  final List<DefinitionsDetailed> _definitions;
  @override
  List<DefinitionsDetailed> get definitions {
    if (_definitions is EqualUnmodifiableListView) return _definitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_definitions);
  }

  final List<String?> _synonyms;
  @override
  List<String?> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  final List<String?> _antonyms;
  @override
  List<String?> get antonyms {
    if (_antonyms is EqualUnmodifiableListView) return _antonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_antonyms);
  }

  @override
  String toString() {
    return 'MeaningsDetailed(partOfSpeech: $partOfSpeech, definitions: $definitions, synonyms: $synonyms, antonyms: $antonyms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeaningsDetailed &&
            (identical(other.partOfSpeech, partOfSpeech) ||
                other.partOfSpeech == partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      partOfSpeech,
      const DeepCollectionEquality().hash(_definitions),
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeaningsDetailedCopyWith<_$_MeaningsDetailed> get copyWith =>
      __$$_MeaningsDetailedCopyWithImpl<_$_MeaningsDetailed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeaningsDetailedToJson(
      this,
    );
  }
}

abstract class _MeaningsDetailed implements MeaningsDetailed {
  const factory _MeaningsDetailed(
      {required final String? partOfSpeech,
      required final List<DefinitionsDetailed> definitions,
      required final List<String?> synonyms,
      required final List<String?> antonyms}) = _$_MeaningsDetailed;

  factory _MeaningsDetailed.fromJson(Map<String, dynamic> json) =
      _$_MeaningsDetailed.fromJson;

  @override
  String? get partOfSpeech;
  @override
  List<DefinitionsDetailed> get definitions;
  @override
  List<String?> get synonyms;
  @override
  List<String?> get antonyms;
  @override
  @JsonKey(ignore: true)
  _$$_MeaningsDetailedCopyWith<_$_MeaningsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

DefinitionsDetailed _$DefinitionsDetailedFromJson(Map<String, dynamic> json) {
  return _DefinitionsDetailed.fromJson(json);
}

/// @nodoc
mixin _$DefinitionsDetailed {
  String? get definition => throw _privateConstructorUsedError;
  List<String?> get synonyms => throw _privateConstructorUsedError;
  List<String?> get antonyms => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefinitionsDetailedCopyWith<DefinitionsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefinitionsDetailedCopyWith<$Res> {
  factory $DefinitionsDetailedCopyWith(
          DefinitionsDetailed value, $Res Function(DefinitionsDetailed) then) =
      _$DefinitionsDetailedCopyWithImpl<$Res, DefinitionsDetailed>;
  @useResult
  $Res call(
      {String? definition,
      List<String?> synonyms,
      List<String?> antonyms,
      String? example});
}

/// @nodoc
class _$DefinitionsDetailedCopyWithImpl<$Res, $Val extends DefinitionsDetailed>
    implements $DefinitionsDetailedCopyWith<$Res> {
  _$DefinitionsDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = freezed,
    Object? synonyms = null,
    Object? antonyms = null,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      antonyms: null == antonyms
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefinitionsDetailedCopyWith<$Res>
    implements $DefinitionsDetailedCopyWith<$Res> {
  factory _$$_DefinitionsDetailedCopyWith(_$_DefinitionsDetailed value,
          $Res Function(_$_DefinitionsDetailed) then) =
      __$$_DefinitionsDetailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? definition,
      List<String?> synonyms,
      List<String?> antonyms,
      String? example});
}

/// @nodoc
class __$$_DefinitionsDetailedCopyWithImpl<$Res>
    extends _$DefinitionsDetailedCopyWithImpl<$Res, _$_DefinitionsDetailed>
    implements _$$_DefinitionsDetailedCopyWith<$Res> {
  __$$_DefinitionsDetailedCopyWithImpl(_$_DefinitionsDetailed _value,
      $Res Function(_$_DefinitionsDetailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? definition = freezed,
    Object? synonyms = null,
    Object? antonyms = null,
    Object? example = freezed,
  }) {
    return _then(_$_DefinitionsDetailed(
      definition: freezed == definition
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      antonyms: null == antonyms
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefinitionsDetailed implements _DefinitionsDetailed {
  const _$_DefinitionsDetailed(
      {required this.definition,
      required final List<String?> synonyms,
      required final List<String?> antonyms,
      required this.example})
      : _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$_DefinitionsDetailed.fromJson(Map<String, dynamic> json) =>
      _$$_DefinitionsDetailedFromJson(json);

  @override
  final String? definition;
  final List<String?> _synonyms;
  @override
  List<String?> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  final List<String?> _antonyms;
  @override
  List<String?> get antonyms {
    if (_antonyms is EqualUnmodifiableListView) return _antonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_antonyms);
  }

  @override
  final String? example;

  @override
  String toString() {
    return 'DefinitionsDetailed(definition: $definition, synonyms: $synonyms, antonyms: $antonyms, example: $example)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefinitionsDetailed &&
            (identical(other.definition, definition) ||
                other.definition == definition) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      definition,
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms),
      example);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefinitionsDetailedCopyWith<_$_DefinitionsDetailed> get copyWith =>
      __$$_DefinitionsDetailedCopyWithImpl<_$_DefinitionsDetailed>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefinitionsDetailedToJson(
      this,
    );
  }
}

abstract class _DefinitionsDetailed implements DefinitionsDetailed {
  const factory _DefinitionsDetailed(
      {required final String? definition,
      required final List<String?> synonyms,
      required final List<String?> antonyms,
      required final String? example}) = _$_DefinitionsDetailed;

  factory _DefinitionsDetailed.fromJson(Map<String, dynamic> json) =
      _$_DefinitionsDetailed.fromJson;

  @override
  String? get definition;
  @override
  List<String?> get synonyms;
  @override
  List<String?> get antonyms;
  @override
  String? get example;
  @override
  @JsonKey(ignore: true)
  _$$_DefinitionsDetailedCopyWith<_$_DefinitionsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

LicenseDetailed _$LicenseDetailedFromJson(Map<String, dynamic> json) {
  return _LicenseDetailed.fromJson(json);
}

/// @nodoc
mixin _$LicenseDetailed {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseDetailedCopyWith<LicenseDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseDetailedCopyWith<$Res> {
  factory $LicenseDetailedCopyWith(
          LicenseDetailed value, $Res Function(LicenseDetailed) then) =
      _$LicenseDetailedCopyWithImpl<$Res, LicenseDetailed>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$LicenseDetailedCopyWithImpl<$Res, $Val extends LicenseDetailed>
    implements $LicenseDetailedCopyWith<$Res> {
  _$LicenseDetailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LicenseDetailedCopyWith<$Res>
    implements $LicenseDetailedCopyWith<$Res> {
  factory _$$_LicenseDetailedCopyWith(
          _$_LicenseDetailed value, $Res Function(_$_LicenseDetailed) then) =
      __$$_LicenseDetailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$_LicenseDetailedCopyWithImpl<$Res>
    extends _$LicenseDetailedCopyWithImpl<$Res, _$_LicenseDetailed>
    implements _$$_LicenseDetailedCopyWith<$Res> {
  __$$_LicenseDetailedCopyWithImpl(
      _$_LicenseDetailed _value, $Res Function(_$_LicenseDetailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_LicenseDetailed(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LicenseDetailed implements _LicenseDetailed {
  const _$_LicenseDetailed({required this.name, required this.url});

  factory _$_LicenseDetailed.fromJson(Map<String, dynamic> json) =>
      _$$_LicenseDetailedFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'LicenseDetailed(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LicenseDetailed &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LicenseDetailedCopyWith<_$_LicenseDetailed> get copyWith =>
      __$$_LicenseDetailedCopyWithImpl<_$_LicenseDetailed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LicenseDetailedToJson(
      this,
    );
  }
}

abstract class _LicenseDetailed implements LicenseDetailed {
  const factory _LicenseDetailed(
      {required final String? name,
      required final String? url}) = _$_LicenseDetailed;

  factory _LicenseDetailed.fromJson(Map<String, dynamic> json) =
      _$_LicenseDetailed.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_LicenseDetailedCopyWith<_$_LicenseDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}
