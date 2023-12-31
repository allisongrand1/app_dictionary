import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_word_model.freezed.dart';
part 'remote_word_model.g.dart';

@freezed
class RemoteWordModel with _$RemoteWordModel {
  const factory RemoteWordModel({
    required RemoteWordModelDetailed model,
  }) = _RemoteWordModel;

  factory RemoteWordModel.fromJson(Map<String, dynamic> json) =>
      _$RemoteWordModelFromJson(json);
}

@freezed
class RemoteWordModelDetailed with _$RemoteWordModelDetailed {
  const factory RemoteWordModelDetailed({
    required String word,
    required List<PhoneticsDetailed> phonetics,
    required List<MeaningsDetailed> meanings,
    required LicenseDetailed license,
    required List<String> sourceUrls,
  }) = _RemoteWordModelDetailed;

  factory RemoteWordModelDetailed.fromJson(Map<String, dynamic> json) =>
      _$RemoteWordModelDetailedFromJson(json);
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
