import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';

Widget costComponent(BuildContext context) {
  return Expanded(
      child: Container(
          margin: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: whiteBackground,
          ),
          child: Text("Cost Component")));
}
