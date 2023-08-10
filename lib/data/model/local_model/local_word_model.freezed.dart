// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalWordModel {
  String get word => throw _privateConstructorUsedError;
  List<PhoneticsDetailed> get phonetics => throw _privateConstructorUsedError;
  List<MeaningsDetailed> get meanings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalWordModelCopyWith<LocalWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalWordModelCopyWith<$Res> {
  factory $LocalWordModelCopyWith(
          LocalWordModel value, $Res Function(LocalWordModel) then) =
      _$LocalWordModelCopyWithImpl<$Res, LocalWordModel>;
  @useResult
  $Res call(
      {String word,
      List<PhoneticsDetailed> phonetics,
      List<MeaningsDetailed> meanings});
}

/// @nodoc
class _$LocalWordModelCopyWithImpl<$Res, $Val extends LocalWordModel>
    implements $LocalWordModelCopyWith<$Res> {
  _$LocalWordModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalWordModelCopyWith<$Res>
    implements $LocalWordModelCopyWith<$Res> {
  factory _$$_LocalWordModelCopyWith(
          _$_LocalWordModel value, $Res Function(_$_LocalWordModel) then) =
      __$$_LocalWordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      List<PhoneticsDetailed> phonetics,
      List<MeaningsDetailed> meanings});
}

/// @nodoc
class __$$_LocalWordModelCopyWithImpl<$Res>
    extends _$LocalWordModelCopyWithImpl<$Res, _$_LocalWordModel>
    implements _$$_LocalWordModelCopyWith<$Res> {
  __$$_LocalWordModelCopyWithImpl(
      _$_LocalWordModel _value, $Res Function(_$_LocalWordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetics = null,
    Object? meanings = null,
  }) {
    return _then(_$_LocalWordModel(
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
    ));
  }
}

/// @nodoc

class _$_LocalWordModel implements _LocalWordModel {
  const _$_LocalWordModel(
      {required this.word,
      required final List<PhoneticsDetailed> phonetics,
      required final List<MeaningsDetailed> meanings})
      : _phonetics = phonetics,
        _meanings = meanings;

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
  String toString() {
    return 'LocalWordModel(word: $word, phonetics: $phonetics, meanings: $meanings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalWordModel &&
            (identical(other.word, word) || other.word == word) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalWordModelCopyWith<_$_LocalWordModel> get copyWith =>
      __$$_LocalWordModelCopyWithImpl<_$_LocalWordModel>(this, _$identity);
}

abstract class _LocalWordModel implements LocalWordModel {
  const factory _LocalWordModel(
      {required final String word,
      required final List<PhoneticsDetailed> phonetics,
      required final List<MeaningsDetailed> meanings}) = _$_LocalWordModel;

  @override
  String get word;
  @override
  List<PhoneticsDetailed> get phonetics;
  @override
  List<MeaningsDetailed> get meanings;
  @override
  @JsonKey(ignore: true)
  _$$_LocalWordModelCopyWith<_$_LocalWordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocalWordModelDetailed {
  String get word => throw _privateConstructorUsedError;
  List<PhoneticsDetailed> get phonetics => throw _privateConstructorUsedError;
  List<MeaningsDetailed> get meanings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalWordModelDetailedCopyWith<LocalWordModelDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalWordModelDetailedCopyWith<$Res> {
  factory $LocalWordModelDetailedCopyWith(LocalWordModelDetailed value,
          $Res Function(LocalWordModelDetailed) then) =
      _$LocalWordModelDetailedCopyWithImpl<$Res, LocalWordModelDetailed>;
  @useResult
  $Res call(
      {String word,
      List<PhoneticsDetailed> phonetics,
      List<MeaningsDetailed> meanings});
}

/// @nodoc
class _$LocalWordModelDetailedCopyWithImpl<$Res,
        $Val extends LocalWordModelDetailed>
    implements $LocalWordModelDetailedCopyWith<$Res> {
  _$LocalWordModelDetailedCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalWordModelDetailedCopyWith<$Res>
    implements $LocalWordModelDetailedCopyWith<$Res> {
  factory _$$_LocalWordModelDetailedCopyWith(_$_LocalWordModelDetailed value,
          $Res Function(_$_LocalWordModelDetailed) then) =
      __$$_LocalWordModelDetailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String word,
      List<PhoneticsDetailed> phonetics,
      List<MeaningsDetailed> meanings});
}

/// @nodoc
class __$$_LocalWordModelDetailedCopyWithImpl<$Res>
    extends _$LocalWordModelDetailedCopyWithImpl<$Res,
        _$_LocalWordModelDetailed>
    implements _$$_LocalWordModelDetailedCopyWith<$Res> {
  __$$_LocalWordModelDetailedCopyWithImpl(_$_LocalWordModelDetailed _value,
      $Res Function(_$_LocalWordModelDetailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? phonetics = null,
    Object? meanings = null,
  }) {
    return _then(_$_LocalWordModelDetailed(
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
    ));
  }
}

/// @nodoc

class _$_LocalWordModelDetailed implements _LocalWordModelDetailed {
  const _$_LocalWordModelDetailed(
      {required this.word,
      required final List<PhoneticsDetailed> phonetics,
      required final List<MeaningsDetailed> meanings})
      : _phonetics = phonetics,
        _meanings = meanings;

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
  String toString() {
    return 'LocalWordModelDetailed(word: $word, phonetics: $phonetics, meanings: $meanings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalWordModelDetailed &&
            (identical(other.word, word) || other.word == word) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      word,
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(_meanings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalWordModelDetailedCopyWith<_$_LocalWordModelDetailed> get copyWith =>
      __$$_LocalWordModelDetailedCopyWithImpl<_$_LocalWordModelDetailed>(
          this, _$identity);
}

abstract class _LocalWordModelDetailed implements LocalWordModelDetailed {
  const factory _LocalWordModelDetailed(
          {required final String word,
          required final List<PhoneticsDetailed> phonetics,
          required final List<MeaningsDetailed> meanings}) =
      _$_LocalWordModelDetailed;

  @override
  String get word;
  @override
  List<PhoneticsDetailed> get phonetics;
  @override
  List<MeaningsDetailed> get meanings;
  @override
  @JsonKey(ignore: true)
  _$$_LocalWordModelDetailedCopyWith<_$_LocalWordModelDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneticsDetailed {
  String? get text => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;

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
  $Res call({String? text, String? audio});
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
  $Res call({String? text, String? audio});
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
    ));
  }
}

/// @nodoc

class _$_PhoneticsDetailed implements _PhoneticsDetailed {
  const _$_PhoneticsDetailed({required this.text, required this.audio});

  @override
  final String? text;
  @override
  final String? audio;

  @override
  String toString() {
    return 'PhoneticsDetailed(text: $text, audio: $audio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneticsDetailed &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, audio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneticsDetailedCopyWith<_$_PhoneticsDetailed> get copyWith =>
      __$$_PhoneticsDetailedCopyWithImpl<_$_PhoneticsDetailed>(
          this, _$identity);
}

abstract class _PhoneticsDetailed implements PhoneticsDetailed {
  const factory _PhoneticsDetailed(
      {required final String? text,
      required final String? audio}) = _$_PhoneticsDetailed;

  @override
  String? get text;
  @override
  String? get audio;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneticsDetailedCopyWith<_$_PhoneticsDetailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MeaningsDetailed {
  String? get partOfSpeech => throw _privateConstructorUsedError;
  List<DefinitionsDetailed> get definitions =>
      throw _privateConstructorUsedError;
  List<String?> get synonyms => throw _privateConstructorUsedError;
  List<String?> get antonyms => throw _privateConstructorUsedError;

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

class _$_MeaningsDetailed implements _MeaningsDetailed {
  const _$_MeaningsDetailed(
      {required this.partOfSpeech,
      required final List<DefinitionsDetailed> definitions,
      required final List<String?> synonyms,
      required final List<String?> antonyms})
      : _definitions = definitions,
        _synonyms = synonyms,
        _antonyms = antonyms;

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
}

abstract class _MeaningsDetailed implements MeaningsDetailed {
  const factory _MeaningsDetailed(
      {required final String? partOfSpeech,
      required final List<DefinitionsDetailed> definitions,
      required final List<String?> synonyms,
      required final List<String?> antonyms}) = _$_MeaningsDetailed;

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

/// @nodoc
mixin _$DefinitionsDetailed {
  String? get definition => throw _privateConstructorUsedError;
  List<String?> get synonyms => throw _privateConstructorUsedError;
  List<String?> get antonyms => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

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

class _$_DefinitionsDetailed implements _DefinitionsDetailed {
  const _$_DefinitionsDetailed(
      {required this.definition,
      required final List<String?> synonyms,
      required final List<String?> antonyms,
      required this.example})
      : _synonyms = synonyms,
        _antonyms = antonyms;

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
}

abstract class _DefinitionsDetailed implements DefinitionsDetailed {
  const factory _DefinitionsDetailed(
      {required final String? definition,
      required final List<String?> synonyms,
      required final List<String?> antonyms,
      required final String? example}) = _$_DefinitionsDetailed;

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
