import 'package:flutter/material.dart';

Widget button(
    {required String label,
    required VoidCallback? onPressed,
    required Color color}) {
  return ElevatedButton(
    child: Container(
        width: 280,
        height: 50,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
          label,
          textAlign: TextAlign.center,
        )),
    onPressed: onPressed,
    style: ButtonStyle(
        alignment: Alignment.center,
        backgroundColor: MaterialStateProperty.all(color)),
  );
}
