import 'package:flutter/material.dart';
import 'package:flutter_weather_app/screens/local_screen.dart';
import 'package:provider/provider.dart';

import '../view_model/weather_view_model.dart';

class WeatherOfLoacl extends StatelessWidget {
  const WeatherOfLoacl(this.name, {Key? key}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    return GestureDetector(
      onTap: () {
        viewModel.setSelectedCity(name);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LocalScreen()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(name),
        ],
      ),
    );
  }
}
