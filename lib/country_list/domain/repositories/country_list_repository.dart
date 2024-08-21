import 'package:europ_country/country_list/data/models/country_model.dart';

abstract class CountryListRepository {

  Future<List<CountryModel>> getCountries();
}