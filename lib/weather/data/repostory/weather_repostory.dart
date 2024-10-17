import 'package:flutter_application_1/weather/data/data_source/remote_datasource.dart';
import 'package:flutter_application_1/weather/domain/entities/weather.dart';
import 'package:flutter_application_1/weather/domain/repostory/base_weather_repostory.dart';

class WeatherRepostory implements BaseWeatherRepostory {
  final RemoteDatasource remoteDatasource;

  WeatherRepostory({required this.remoteDatasource});

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await remoteDatasource.getWeatherByCountryName(countryName))!;
  }
}
