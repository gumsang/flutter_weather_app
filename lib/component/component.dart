import 'package:flutter/material.dart';

class Loacls extends StatelessWidget {
  const Loacls(this.name, {Key? key}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(name),
      ],
    );
  }
}
