import 'package:flutter/material.dart';

import '../constants.dart';

class Tempo extends StatefulWidget {
  const Tempo({Key? key}) : super(key: key);

  @override
  _TempoState createState() => _TempoState();
}

class _TempoState extends State<Tempo> {
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
