part of 'country_list_cubit.dart';

@immutable
sealed class CountryListState {}

final class CountryListInitial extends CountryListState {}

final class CountryListLoading extends CountryListState {}

final class CountryListLoaded extends CountryListState {
  final List<CountryModel> countryModelList;

  CountryListLoaded(this.countryModelList);
}

final class CountryListLoadingFailed extends CountryListState {
  final String error;

  CountryListLoadingFailed(this.error);
}
