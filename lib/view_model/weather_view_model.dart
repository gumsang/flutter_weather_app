import 'package:flutter/material.dart';

import '../api/weather_api.dart';
import '../model/weather.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherApi = WeatherApi();
  MyWeather weather = MyWeather();

  WeatherViewModel() {
    getWeather();
  }

  void getWeather() async {
    weather = await _weatherApi.getWeather();
    notifyListeners();
  }
}
