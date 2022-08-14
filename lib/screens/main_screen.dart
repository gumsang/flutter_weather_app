import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "전국날씨정보",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.network(
              "https://r.yna.co.kr/m-kr/home/v01/img/m_map_city.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

class Loacls extends StatelessWidget {
  const Loacls(this.name, {Key? key}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

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
