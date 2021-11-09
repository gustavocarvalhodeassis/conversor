import 'package:conversor/constants.dart';
import 'package:conversor/engine.dart';
import 'package:flutter/material.dart';

class Temperatura extends StatefulWidget {
  const Temperatura({Key? key}) : super(key: key);

  @override
  _TemperaturaState createState() => _TemperaturaState();
}

class _TemperaturaState extends State<Temperatura> {
  final engine = const Engine();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextField("Celcius C°", celciusController),
        CustomTextField("Fahrenheit F°", fahrenheitController),
        CustomTextField("Kelvin K", kelvinController)
      ],
    ));
  }
}
