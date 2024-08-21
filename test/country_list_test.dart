import 'package:europ_country/core/service_locator.dart';
import 'package:europ_country/country_list/data/models/country_model.dart';
import 'package:europ_country/country_list/domain/use_cases/country_list_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("CountryList", () {
    setUp(() async {
      await setupLocator();
    });

    test('fetch country list', () async {
      final countryListUseCase = serviceLocator<CountryListUseCase>();

      List<CountryModel> countryList = await countryListUseCase.getCountries();

      expect(countryList.isNotEmpty, isTrue);
    });
  });
}
