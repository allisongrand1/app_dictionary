// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_word_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteWordModel _$$_RemoteWordModelFromJson(Map<String, dynamic> json) =>
    _$_RemoteWordModel(
      word: json['word'] as String,
      phonetics: (json['phonetics'] as List<dynamic>)
          .map((e) => PhoneticsDetailed.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>)
          .map((e) => MeaningsDetailed.fromJson(e as Map<String, dynamic>))
          .toList(),
      license:
          LicenseDetailed.fromJson(json['license'] as Map<String, dynamic>),
      sourceUrls: (json['sourceUrls'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$$_RemoteWordModelToJson(_$_RemoteWordModel instance) =>
    <String, dynamic>{
      'word': instance.word,
      'phonetics': instance.phonetics,
      'meanings': instance.meanings,
      'license': instance.license,
      'sourceUrls': instance.sourceUrls,
    };

_$_PhoneticsDetailed _$$_PhoneticsDetailedFromJson(Map<String, dynamic> json) =>
    _$_PhoneticsDetailed(
      text: json['text'] as String?,
      audio: json['audio'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
      license: json['license'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_PhoneticsDetailedToJson(
        _$_PhoneticsDetailed instance) =>
    <String, dynamic>{
      'text': instance.text,
      'audio': instance.audio,
      'sourceUrl': instance.sourceUrl,
      'license': instance.license,
    };

_$_MeaningsDetailed _$$_MeaningsDetailedFromJson(Map<String, dynamic> json) =>
    _$_MeaningsDetailed(
      partOfSpeech: json['partOfSpeech'] as String?,
      definitions: (json['definitions'] as List<dynamic>?)
          ?.map((e) => DefinitionsDetailed.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$$_MeaningsDetailedToJson(_$_MeaningsDetailed instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'isSelected': instance.isSelected,
    };

_$_DefinitionsDetailed _$$_DefinitionsDetailedFromJson(
        Map<String, dynamic> json) =>
    _$_DefinitionsDetailed(
      definition: json['definition'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$_DefinitionsDetailedToJson(
        _$_DefinitionsDetailed instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
      'example': instance.example,
    };

_$_LicenseDetailed _$$_LicenseDetailedFromJson(Map<String, dynamic> json) =>
    _$_LicenseDetailed(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_LicenseDetailedToJson(_$_LicenseDetailed instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
