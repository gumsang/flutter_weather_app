import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/component.dart';
import '../view_model/weather_view_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "전국날씨정보",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  viewModel.getWeather();
                },
                icon: const Icon(Icons.refresh)),
            Stack(
              children: [
                Image.network(
                  "https://r.yna.co.kr/m-kr/home/v01/img/m_map_city.png",
                  fit: BoxFit.cover,
                ),
                const Positioned(
                  top: 120,
                  left: 120,
                  child: WeatherOfLoacl("Seoul"),
                ),
                const Positioned(
                  top: 230,
                  left: 140,
                  child: WeatherOfLoacl("Daejeon"),
                ),
                const Positioned(
                  top: 280,
                  right: 130,
                  child: WeatherOfLoacl("Daegu"),
                ),
                const Positioned(
                  top: 340,
                  right: 100,
                  child: WeatherOfLoacl("Busan"),
                ),
                const Positioned(
                  top: 350,
                  left: 90,
                  child: WeatherOfLoacl("Gwangju"),
                ),
                const Positioned(
                  top: 90,
                  left: 220,
                  child: WeatherOfLoacl("Gangneung"),
                ),
                const Positioned(
                  top: 160,
                  left: 180,
                  child: WeatherOfLoacl("Chungju"),
                ),
                const Positioned(
                  top: 80,
                  left: 150,
                  child: WeatherOfLoacl("Chuncheon"),
                ),
                const Positioned(
                  top: 290,
                  left: 130,
                  child: WeatherOfLoacl("Jeonju"),
                ),
                const Positioned(
                  top: 460,
                  left: 80,
                  child: WeatherOfLoacl("Jeju-do"),
                ),
              ],
              //             List<String> cityList = [
              //   "Seoul",
              //   "Daejeon",
              //   "Daegu",
              //   "Busan",
              //   "Gwangju",
              //   "Gangneung",
              //   "Chungju",
              //   "Chuncheon",
              //   "Jeonju",
              //   "Jeju-do",
              // ];
            ),
          ],
        ),
      ),
    );
  }
}
