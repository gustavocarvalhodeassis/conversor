import 'package:conversor/constants.dart';
import 'package:flutter/material.dart';

class Temperatura extends StatefulWidget {
  const Temperatura({Key? key}) : super(key: key);

  @override
  _TemperaturaState createState() => _TemperaturaState();
}

class _TemperaturaState extends State<Temperatura> {
  void _celciusCalculate(String valor) {
    double celcius = double.parse(valor);
    fahrenriteController.text = (celcius * 1.8 + 32).toStringAsFixed(1);
    kelvinController.text = (celcius + 273).toString();
  }

  void _fahrenriteCalculate(String valor) {
    double fahrenrite = double.parse(valor);
    celciusController.text = ((fahrenrite - 32) / 1.8).toStringAsFixed(1);
    kelvinController.text =
        ((fahrenrite - 32) * 5 / 9 + 273).toStringAsFixed(1);
  }

  void _kelvinCalculate(String valor) {
    double kelvin = double.parse(valor);
    celciusController.text = (kelvin - 273).toString();
    fahrenriteController.text = ((kelvin - 273) * 1.8 + 32).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text('Temperatura',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 35,
              )),
        ),
        Padding(
            padding: EdgeInsets.only(
          top: 30,
        )),
        CustomTextField("Celcius C°", celciusController, _celciusCalculate),
        CustomTextField(
            "Fahrenheit F°", fahrenriteController, _fahrenriteCalculate),
        CustomTextField("Kelvin K", kelvinController, _kelvinCalculate)
      ],
    ));
  }
}
