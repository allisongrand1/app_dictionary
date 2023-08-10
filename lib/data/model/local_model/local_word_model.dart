import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_word_model.freezed.dart';

@freezed
class LocalWordModel with _$LocalWordModel {
  const factory LocalWordModel({
    required String word,
    required List<PhoneticsDetailed> phonetics,
    required List<MeaningsDetailed> meanings,
  }) = _LocalWordModel;
}

@freezed
class LocalWordModelDetailed with _$LocalWordModelDetailed {
  const factory LocalWordModelDetailed({
    required String word,
    required List<PhoneticsDetailed> phonetics,
    required List<MeaningsDetailed> meanings,
  }) = _LocalWordModelDetailed;
}

@freezed
class PhoneticsDetailed with _$PhoneticsDetailed {
  const factory PhoneticsDetailed({
    required String? text,
    required String? audio,
  }) = _PhoneticsDetailed;
}

@freezed
class MeaningsDetailed with _$MeaningsDetailed {
  const factory MeaningsDetailed({
    required String? partOfSpeech,
    required List<DefinitionsDetailed> definitions,
    required List<String?> synonyms,
    required List<String?> antonyms,
  }) = _MeaningsDetailed;
}

@freezed
class DefinitionsDetailed with _$DefinitionsDetailed {
  const factory DefinitionsDetailed({
    required String? definition,
    required List<String?> synonyms,
    required List<String?> antonyms,
    required String? example,
  }) = _DefinitionsDetailed;
}
