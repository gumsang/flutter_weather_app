import 'dart:convert';
import 'package:flutter_weather_app/model/weather.dart';
import 'package:http/http.dart' as http;

String ssamKey = '95114a1e948559e010396b4debdf1672';
String myKey = 'b15ce43143f8ba3a9080c5f9299c6d9a';

class WeatherApi {
  //icon 쓰는법
  //https://openweathermap.org/img/w/01d.png

  Future<Weather> getWeather() async {
    Uri url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=$myKey');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);

    print("my key is $json");

    // Iterable trainLineNm = json['realtimeArrivalList'];
    // return trainLineNm.map((e) => Subway.fromJson(e)).toList();
    return Weather.fromJson(json);
  }
}
