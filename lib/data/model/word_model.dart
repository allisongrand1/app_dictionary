import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_model.freezed.dart';
part 'word_model.g.dart';

@freezed
class WordModel with _$WordModel {
  const factory WordModel({
    required WordModelDetailed model,
  }) = _WordModel;

  factory WordModel.fromJson(Map<String, dynamic> json) =>
      _$WordModelFromJson(json);
}

@freezed
class WordModelDetailed with _$WordModelDetailed {
  const factory WordModelDetailed({
    required String word,
    required List<PhoneticsDetailed> phonetics,
    required List<MeaningsDetailed> meanings,
    required LicenseDetailed license,
    required List<String> sourceUrls,
  }) = _WordModelDetailed;

  factory WordModelDetailed.fromJson(Map<String, dynamic> json) =>
      _$WordModelDetailedFromJson(json);
}

@freezed
class PhoneticsDetailed with _$PhoneticsDetailed {
  const factory PhoneticsDetailed({
    required String? text,
    required String? audio,
    required String? sourceUrl,
    required Map<String, dynamic>? license,
  }) = _PhoneticsDetailed;

  factory PhoneticsDetailed.fromJson(Map<String, dynamic> json) =>
      _$PhoneticsDetailedFromJson(json);
}

@freezed
class MeaningsDetailed with _$MeaningsDetailed {
  const factory MeaningsDetailed({
    required String? partOfSpeech,
    required List<DefinitionsDetailed> definitions,
    required List<String?> synonyms,
    required List<String?> antonyms,
  }) = _MeaningsDetailed;

  factory MeaningsDetailed.fromJson(Map<String, dynamic> json) =>
      _$MeaningsDetailedFromJson(json);
}

@freezed
class DefinitionsDetailed with _$DefinitionsDetailed {
  const factory DefinitionsDetailed({
    required String? definition,
    required List<String?> synonyms,
    required List<String?> antonyms,
    required String? example,
  }) = _DefinitionsDetailed;

  factory DefinitionsDetailed.fromJson(Map<String, dynamic> json) =>
      _$DefinitionsDetailedFromJson(json);
}

@freezed
class LicenseDetailed with _$LicenseDetailed {
  const factory LicenseDetailed({
    required String? name,
    required String? url,
  }) = _LicenseDetailed;

  factory LicenseDetailed.fromJson(Map<String, dynamic> json) =>
      _$LicenseDetailedFromJson(json);
}
