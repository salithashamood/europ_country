import 'package:europ_country/country_list/data/models/native_name_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'name_model.g.dart';

@JsonSerializable()
class NameModel {
  final String? common;
  final String? official;
  final Map<String, NativeNameModel>? nativeName;

  NameModel(this.common, this.official, this.nativeName);

  factory NameModel.fromJson(Map<String, dynamic> srcJson) =>
      _$NameModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NameModelToJson(this);
}
