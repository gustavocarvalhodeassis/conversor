import 'package:flutter/material.dart';

TextEditingController celciusController = TextEditingController();
TextEditingController fahrenheitController = TextEditingController();
TextEditingController kelvinController = TextEditingController();

const TextStyle kTabTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
);

const TextStyle kInputTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 15,
);

const InputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
  borderSide: BorderSide(
    color: Colors.white24,
    width: 2,
  ),
);

Widget CustomTextField(
  String? txt,
  TextEditingController controller,
) {
  return LayoutBuilder(builder: (context, contrain) {
    // se for um Computador

    if (contrain.maxWidth > 500) {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: 450,
        child: TextFormField(
          controller: controller,
          style: kInputTextStyle,
          decoration: InputDecoration(
            labelText: txt,
            labelStyle: kInputTextStyle,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: kInputBorder,
            errorBorder: kInputBorder,
            enabledBorder: kInputBorder,
            focusedBorder: kInputBorder,
            disabledBorder: kInputBorder,
            focusedErrorBorder: kInputBorder,
          ),
        ),
      );
    }

    // se for um Celular

    else {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            labelText: txt,
            labelStyle: kInputTextStyle,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: kInputBorder,
            errorBorder: kInputBorder,
            enabledBorder: kInputBorder,
            focusedBorder: kInputBorder,
            disabledBorder: kInputBorder,
            focusedErrorBorder: kInputBorder,
          ),
        ),
      );
    }
  });
}
