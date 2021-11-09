import 'package:flutter/material.dart';

import '../constants.dart';

class Peso extends StatefulWidget {
  const Peso({Key? key}) : super(key: key);

  @override
  _PesoState createState() => _PesoState();
}

class _PesoState extends State<Peso> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Peso',
        style: kInputTextStyle,
      ),
    );
  }
}
