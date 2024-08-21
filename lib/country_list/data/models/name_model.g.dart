// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameModel _$NameModelFromJson(Map<String, dynamic> json) => NameModel(
      json['common'] as String?,
      json['official'] as String?,
      (json['nativeName'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NativeNameModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$NameModelToJson(NameModel instance) => <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'nativeName': instance.nativeName,
    };
