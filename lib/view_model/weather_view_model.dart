import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../api/weather_api.dart';
import '../model/weather.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherApi = WeatherApi();
  MyWeather weather = MyWeather();
  List<MyWeather> weatherList = [];
  List<String> cityList = [
    "Seoul",
    "Daejeon",
    "Daegu",
    "Busan",
    "Gwangju",
    "Gangneung",
    "Chungju",
    "Chuncheon",
    "Jeonju",
    "Jeju-do",
  ];

  WeatherViewModel() {
    getWeather();
  }

  void getWeather() async {
    cityList.forEach(
      (element) async {
        MyWeather weather = await _weatherApi.getWeather(element);
        weatherList.add(weather);
      },
    );

    // weather = await _weatherApi.getWeather();
    notifyListeners();
  }

  String getNameOfCity() {
    return weather.name.toString();
  }

  num FtoC(num F) {
    num C = (F - 32) * 5 / 9;
    return C;
  }

  num KtoC(num K) {
    num C = K - 273.15;
    return C;
  }

  String getCurrentTemp() {
    return KtoC(weather.main!.temp!).toStringAsFixed(1);
  }

  String getTempMax() {
    return KtoC(weather.main!.tempMax!).toStringAsFixed(1);
  }

  String getTempMin() {
    return KtoC(weather.main!.tempMin!).toStringAsFixed(1);
  }

  String convertUnixTimeToDateTime(num unixTime) {
    num timestamp = unixTime; // timestamp in seconds
    final DateTime date =
        DateTime.fromMillisecondsSinceEpoch(timestamp.toInt() * 1000);
    return DateFormat.Hm().format(date);
  }

  String getSunriseTime() {
    return convertUnixTimeToDateTime(weather.sys!.sunrise!);
  }

  String getSunsetTime() {
    return convertUnixTimeToDateTime(weather.sys!.sunset!);
  }
}
