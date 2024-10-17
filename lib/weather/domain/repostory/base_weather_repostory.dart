import 'package:flutter_application_1/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepostory {
  Future<Weather> getWeatherByCityName(String cityName);
}
