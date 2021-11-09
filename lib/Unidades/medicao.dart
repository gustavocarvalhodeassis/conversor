import 'package:flutter/material.dart';

import '../constants.dart';

class Medicao extends StatefulWidget {
  const Medicao({Key? key}) : super(key: key);

  @override
  _MedicaoState createState() => _MedicaoState();
}

class _MedicaoState extends State<Medicao> {
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
