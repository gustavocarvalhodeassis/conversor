import 'package:conversor/constants.dart';
import 'package:flutter/material.dart';

class Temperatura extends StatefulWidget {
  const Temperatura({Key? key}) : super(key: key);

  @override
  _TemperaturaState createState() => _TemperaturaState();
}

class _TemperaturaState extends State<Temperatura> {
  void calculateCelcius() {
    double celcius = double.parse(celciusController.text);
    double fahrenheit = double.parse(fahrenheitController.text);
    double kelvin = double.parse(kelvinController.text);
    double result;
    setState(() {});
  }

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
