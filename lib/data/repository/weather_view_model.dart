import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../api/weather_api.dart';
import '../model/weather.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherApi = WeatherApi();
  String selectedCity = '';
  Map<String, MyWeather> weatherList = {
    "Seoul": MyWeather(),
    "Daejeon": MyWeather(),
    "Daegu": MyWeather(),
    "Busan": MyWeather(),
    "Gwangju": MyWeather(),
    "Gangneung": MyWeather(),
    "Chungju": MyWeather(),
    "Chuncheon": MyWeather(),
    "Jeonju": MyWeather(),
    "Jeju-do": MyWeather(),
  };
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

  void setSelectedCity(String query) {
    selectedCity = query;
    notifyListeners();
  }

  void getWeather() async {
    cityList.map(
      (element) async {
        weatherList[element] = await _weatherApi.getWeather(element);
      },
    );
    notifyListeners();
  }

  String getNameOfCity(MyWeather city) {
    return city.name.toString();
  }

  num fToC(num F) {
    num C = (F - 32) * 5 / 9;
    return C;
  }

  num kToC(num K) {
    num C = K - 273.15;
    return C;
  }

  String getCurrentTemp(MyWeather city) {
    return kToC(city.main!.temp!).toStringAsFixed(1);
  }

  String getTempMax(MyWeather city) {
    return kToC(city.main!.tempMax!).toStringAsFixed(1);
  }

  String getTempMin(MyWeather city) {
    return kToC(city.main!.tempMin!).toStringAsFixed(1);
  }

  String convertUnixTimeToDateTime(num unixTime) {
    num timestamp = unixTime; // timestamp in seconds
    final DateTime date =
        DateTime.fromMillisecondsSinceEpoch(timestamp.toInt() * 1000);
    return DateFormat.Hm().format(date);
  }

  String getSunriseTime(MyWeather city) {
    return convertUnixTimeToDateTime(city.sys!.sunrise!);
  }

  String getSunsetTime(MyWeather city) {
    return convertUnixTimeToDateTime(city.sys!.sunset!);
  }
}
