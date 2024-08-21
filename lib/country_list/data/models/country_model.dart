import 'package:europ_country/country_list/data/models/flag_model.dart';
import 'package:europ_country/country_list/data/models/name_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryModel {
  final FlagModel? flags;
  final NameModel? name;
  final List<String>? capital;
  final String? region;
  final Map<String, String>? languages;
  final int? population;

  CountryModel(this.flags, this.name, this.capital, this.region, this.languages,
      this.population);

  factory CountryModel.fromJson(Map<String, dynamic> srcJson) =>
      _$CountryModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}
