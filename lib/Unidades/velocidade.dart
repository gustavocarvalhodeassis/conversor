import 'package:flutter/material.dart';

import '../constants.dart';

class Velocidade extends StatefulWidget {
  const Velocidade({Key? key}) : super(key: key);

  @override
  _VelocidadeState createState() => _VelocidadeState();
}

class _VelocidadeState extends State<Velocidade> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Velocidade',
        style: kInputTextStyle,
      ),
    );
  }
}
