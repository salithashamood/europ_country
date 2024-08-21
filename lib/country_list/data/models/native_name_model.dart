import 'package:json_annotation/json_annotation.dart';

part 'native_name_model.g.dart';

@JsonSerializable()
class NativeNameModel {
  final String? official;
  final String? common;

  NativeNameModel(this.official, this.common);

  factory NativeNameModel.fromJson(Map<String, dynamic> srcJson) =>
      _$NativeNameModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$NativeNameModelToJson(this);
}
