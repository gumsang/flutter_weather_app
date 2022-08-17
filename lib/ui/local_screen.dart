import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/weather_view_model.dart';

class LocalScreen extends StatelessWidget {
  const LocalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://previews.123rf.com/images/peogeo/peogeo1408/peogeo140800302/30797386-화창한-날에-멋진-푸른-하늘과-구름의-아름다운-여러-종류의.jpg'), // 배경 이미지
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("현재날씨"),
        ),
        backgroundColor: Colors.transparent, // 배경색을 투명으로 설정
        body: Consumer<WeatherViewModel>(
          builder: (BuildContext context, viewModel, Widget? child) => Center(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      viewModel.getNameOfCity(
                          viewModel.weatherList[viewModel.selectedCity]!),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      viewModel.getCurrentTemp(
                          viewModel.weatherList[viewModel.selectedCity]!),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    ),
                    Text(
                      viewModel.weatherList[viewModel.selectedCity]!.weather![0]
                          .main!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "최고기온 : ${viewModel.getTempMax(viewModel.weatherList[viewModel.selectedCity]!)}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "최저기온 : ${viewModel.getTempMin(viewModel.weatherList[viewModel.selectedCity]!)}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "일출시간 : ${viewModel.getSunriseTime(viewModel.weatherList[viewModel.selectedCity]!)}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "일몰시간 : ${viewModel.getSunsetTime(viewModel.weatherList[viewModel.selectedCity]!)}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                      child: Card(
                        color: Color.fromRGBO(0, 0, 0, 0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.warning_rounded),
                                    Text('Excessive Heat Warning'),
                                  ],
                                ),
                                Text(
                                    'National Weather Service. Excessive Heat Warning in Seatle and vicinty'),
                                Divider(thickness: 3),
                                Text('See More')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Card(
                        color: Color.fromRGBO(0, 0, 0, 0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined),
                                    Text('HOURLY FORECAST'),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('Now'),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Icon(Icons.sunny),
                                              ),
                                              Text('79`'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('Now'),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Icon(Icons.sunny),
                                              ),
                                              Text('79`'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('Now'),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Icon(Icons.sunny),
                                              ),
                                              Text('79`'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('Now'),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Icon(Icons.sunny),
                                              ),
                                              Text('79`'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('Now'),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Icon(Icons.sunny),
                                              ),
                                              Text('79`'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('Now'),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 10, 0, 10),
                                                child: Icon(Icons.sunny),
                                              ),
                                              Text('79`'),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                      child: Card(
                        color: Color.fromARGB(0, 0, 0, 0),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.warning_rounded),
                                    Text('Excessive Heat Warning'),
                                  ],
                                ),
                                Text(
                                    'National Weather Service. Excessive Heat Warning in Seatle and vicinty'),
                                Divider(thickness: 3),
                                Text('See More')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
