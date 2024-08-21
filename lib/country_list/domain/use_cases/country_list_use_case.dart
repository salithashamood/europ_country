import 'package:europ_country/country_list/data/models/country_model.dart';
import 'package:europ_country/country_list/domain/repositories/country_list_repository.dart';

class CountryListUseCase {
  final CountryListRepository _countryListRepository;

  CountryListUseCase(this._countryListRepository);

  Future<List<CountryModel>> getCountries() async {
    return await _countryListRepository.getCountries();
  }
}
