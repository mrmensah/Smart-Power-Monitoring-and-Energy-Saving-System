import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';

Widget textField(
    {required String label,
    required Function onSubmit,
    required TextEditingController controller}) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        border: Border.all(
            style: BorderStyle.solid, color: light_darker_Background)),
    child: TextField(
      cursorColor: Colors.grey,
      textAlign: TextAlign.center,
      decoration: InputDecoration(hintText: label, border: InputBorder.none),
    ),
  );
}
