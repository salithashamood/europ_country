import 'package:dio/dio.dart';
import 'package:europ_country/country_list/data/models/country_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://restcountries.com/v3.1/region")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("/europe?fields=name,capital,flags,region,languages,population,capital")
  Future<List<CountryModel>> getEuropeanCountries();
}