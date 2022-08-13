import 'package:flutter/material.dart';

import '../api/weather_api.dart';
import '../model/weather.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherApi = WeatherApi();

  Weather weather = Weather();

  void fetchArrivalLists(String query) async {
    weather = await _weatherApi.getWeather();
    notifyListeners();
  }
}
