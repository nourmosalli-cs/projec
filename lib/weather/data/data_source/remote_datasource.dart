import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/utile/constance.dart';
import 'package:flutter_application_1/weather/data/model/weather_model.dart';

abstract class BaseRemoteDatasource {
  Future<WeatherModel?> getWeatherByCountryName(String countryName);
}

class RemoteDatasource implements BaseRemoteDatasource {
  @override
  Future<WeatherModel?> getWeatherByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.appkey}');
      return WeatherModel.fromjson(json.decode(response.data));
    } catch (e) {
      return null;
    }
  }
}
