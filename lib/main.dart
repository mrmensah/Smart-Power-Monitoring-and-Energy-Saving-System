import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keep/screens/launchingScreen.dart';
// import 'package:keep/screens/login.dart'

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Power Monitor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(headline6: GoogleFonts.poppins())),
      home: LaunchScreen(),
    );
  }
}
