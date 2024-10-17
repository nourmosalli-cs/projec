import 'package:flutter_application_1/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      {required super.id,
      required super.cityname,
      required super.main,
      required super.description,
      required super.pressure});
  factory WeatherModel.fromjson(Map<String, dynamic> json) => WeatherModel(
      id: json["id"],
      cityname: json["name"],
      main: json["weather"][0]["main"],
      description: json["weather"][0]["description"],
      pressure: json["main"]["pressure"]);
}
