import 'package:conversor/constants.dart';
import 'package:flutter/material.dart';

class Temperatura extends StatefulWidget {
  const Temperatura({Key? key}) : super(key: key);

  @override
  _TemperaturaState createState() => _TemperaturaState();
}

class _TemperaturaState extends State<Temperatura> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(child: LayoutBuilder(
      builder: (context, contrains) {
        if (contrains.maxWidth > 500) {
          return AnimatedContainer(
            width: 500,
            duration: Duration(seconds: 1),
            child: TextField(),
          );
        } else {
          return AnimatedContainer(
            duration: Duration(seconds: 1),
            width: size.width * 0.8,
            child: TextField(),
          );
        }
      },
    ));
  }
}
