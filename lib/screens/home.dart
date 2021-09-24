import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/widgets/sideMenu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackground,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [sideMenu(context)],
        ),
      ),
    );
  }
}
