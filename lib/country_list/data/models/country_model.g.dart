// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
      json['flags'] == null
          ? null
          : FlagModel.fromJson(json['flags'] as Map<String, dynamic>),
      json['name'] == null
          ? null
          : NameModel.fromJson(json['name'] as Map<String, dynamic>),
      (json['capital'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['region'] as String?,
      (json['languages'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      (json['population'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'name': instance.name,
      'capital': instance.capital,
      'region': instance.region,
      'languages': instance.languages,
      'population': instance.population,
    };
