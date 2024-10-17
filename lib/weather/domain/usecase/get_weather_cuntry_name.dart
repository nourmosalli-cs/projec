import 'package:flutter_application_1/weather/domain/entities/weather.dart';
import 'package:flutter_application_1/weather/domain/repostory/base_weather_repostory.dart';

class GetWeatherCuntryName {
  final BaseWeatherRepostory repostory;

  GetWeatherCuntryName({required this.repostory});
  Future<Weather> execute(String cityName) async {
    return await repostory.getWeatherByCityName(cityName);
  }
}
