import 'package:europ_country/core/http_request.dart';
import 'package:europ_country/core/rest_client.dart';
import 'package:europ_country/country_list/data/repositories/country_list_repository_impl.dart';
import 'package:europ_country/country_list/domain/repositories/country_list_repository.dart';
import 'package:europ_country/country_list/domain/use_cases/country_list_use_case.dart';
import 'package:europ_country/country_list/presentation/cubit/country_list_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupLocator() async {
  // Http request
  serviceLocator.registerSingleton<HttpRequest>(HttpRequest());

  // Rest client
  serviceLocator.registerLazySingleton<RestClient>(
      () => RestClient(serviceLocator<HttpRequest>().getDio()));

  //Cubit
  //Country list
  serviceLocator.registerFactory<CountryListCubit>(
    () => CountryListCubit(serviceLocator<CountryListUseCase>()),
  );
  //Cubit

  //use case
  //country list use case
  serviceLocator.registerFactory<CountryListUseCase>(
    () => CountryListUseCase(serviceLocator<CountryListRepository>()),
  );
  //use case

  //repository
  //country list repository
  serviceLocator.registerFactory<CountryListRepository>(
    () => CountryListRepositoryImpl(serviceLocator<RestClient>()),
  );
  //repository
}
