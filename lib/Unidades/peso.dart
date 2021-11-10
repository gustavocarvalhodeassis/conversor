import 'package:flutter/material.dart';

import '../constants.dart';

class Peso extends StatefulWidget {
  const Peso({Key? key}) : super(key: key);

  @override
  _PesoState createState() => _PesoState();
}

class _PesoState extends State<Peso> {
  void _kilosCalculate(String valor) {
    double kilos = double.parse(valor);
    librasController.text = (kilos * 2.205).toStringAsFixed(2);
  }

  void _librasCalculate(String valor) {
    double libras = double.parse(valor);
    kilosController.text = (libras / 2.205).toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text('Peso',
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
        CustomTextField("Libras lb", librasController, _librasCalculate),
        CustomTextField("Kilos Kg", kilosController, _kilosCalculate),
      ],
    ));
  }
}
