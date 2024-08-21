import 'package:json_annotation/json_annotation.dart';

part 'flag_model.g.dart';

@JsonSerializable()
class FlagModel {
  final String? png;
  final String? svg;
  final String? alt;

  FlagModel(this.png, this.svg, this.alt);

  factory FlagModel.fromJson(Map<String, dynamic> srcJson) =>
      _$FlagModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$FlagModelToJson(this);
}
