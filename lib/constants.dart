import 'package:flutter/material.dart';

TextEditingController celciusController = TextEditingController();
TextEditingController fahrenriteController = TextEditingController();
TextEditingController kelvinController = TextEditingController();
TextEditingController librasController = TextEditingController();
TextEditingController kilosController = TextEditingController();
TextEditingController kmphController = TextEditingController();
TextEditingController mphController = TextEditingController();
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
    String? txt, TextEditingController controller, Function(String) f) {
  return LayoutBuilder(builder: (context, contrain) {
    // se for um Computador

    if (contrain.maxWidth > 500) {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: 450,
        child: TextFormField(
          onChanged: f,
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
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: TextFormField(
          controller: controller,
          onChanged: f,
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
  });
}
