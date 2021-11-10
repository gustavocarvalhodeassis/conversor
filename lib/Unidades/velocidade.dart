import 'package:flutter/material.dart';

import '../constants.dart';

class Velocidade extends StatefulWidget {
  const Velocidade({Key? key}) : super(key: key);

  @override
  _VelocidadeState createState() => _VelocidadeState();
}

class _VelocidadeState extends State<Velocidade> {
  void _kmphCalculate(String valor) {
    double kmph = double.parse(valor);
    mphController.text = (kmph * 1.609).toStringAsFixed(1);
  }

  void _mphCalculate(String valor) {
    double mph = double.parse(valor);
    kmphController.text = (mph / 1.609).toStringAsFixed(1);
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
          child: Text('Velocidade',
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
        CustomTextField("Libras lb", kmphController, _kmphCalculate),
        CustomTextField("Kilos Kg", mphController, _mphCalculate),
      ],
    ));
  }
}
