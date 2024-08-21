import 'package:bloc/bloc.dart';
import 'package:europ_country/country_list/data/models/country_model.dart';
import 'package:europ_country/country_list/domain/use_cases/country_list_use_case.dart';
import 'package:meta/meta.dart';

part 'country_list_state.dart';

class CountryListCubit extends Cubit<CountryListState> {
  final CountryListUseCase _countryListUseCase;

  CountryListCubit(this._countryListUseCase) : super(CountryListInitial()) {
    getCountries();
  }

  List<CountryModel> countryModelList = [];

  Future<void> getCountries() async {
    try {
      emit(CountryListLoading());
      //fetch country list
      countryModelList = await _countryListUseCase.getCountries();
      emit(CountryListLoaded(countryModelList));
    } catch (e) {
      emit(CountryListLoadingFailed(e.toString()));
    }
  }

  void changeSortMethod(String value) {
    //Select sort method
    emit(CountryListLoading());
    switch (value) {
      case "Population":
        countryModelList.sort((a, b) => a.population!.compareTo(b.population!));
      case "Name":
        countryModelList
            .sort((a, b) => a.name!.official!.compareTo(b.name!.official!));
      case "Capital":
        countryModelList
            .sort((a, b) => a.capital!.first.compareTo(b.capital!.first));
    }
    emit(CountryListLoaded(countryModelList));
  }
}
