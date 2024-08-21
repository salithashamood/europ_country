import 'package:europ_country/core/rest_client.dart';
import 'package:europ_country/country_list/data/models/country_model.dart';

import '../../domain/repositories/country_list_repository.dart';

class CountryListRepositoryImpl implements CountryListRepository {
  final RestClient _restClient;

  CountryListRepositoryImpl(this._restClient);

  @override
  Future<List<CountryModel>> getCountries() async {
    return await _restClient.getEuropeanCountries();
  }
}