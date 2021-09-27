import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';

Widget textField(
    {required String label,
    required Function onSubmit,
    required bool isPassword,
    required TextEditingController controller}) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
            style: BorderStyle.solid, color: light_darker_Background)),
    child: TextField(
      cursorColor: Colors.grey,
      obscureText: isPassword,
      textAlign: TextAlign.center,
      decoration: InputDecoration(hintText: label, border: InputBorder.none),
    ),
  );
}
