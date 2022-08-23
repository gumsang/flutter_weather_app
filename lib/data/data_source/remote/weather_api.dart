import 'dart:convert';
import 'package:flutter_weather_app/data/model/weather.dart';
import 'package:http/http.dart' as http;
import '../../api/apikeys.dart';

class WeatherApi {
  //icon 쓰는법
  //https://openweathermap.org/img/w/01d.png

  Future<MyWeather> getWeather(String query) async {
    Uri url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$query&appid=$myKey');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);

    return MyWeather.fromJson(json);
  }
}
