import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keep/providers/switchComponent.dart';
import 'package:keep/screens/launchingScreen.dart';
import 'package:provider/provider.dart';
// import 'package:keep/screens/login.dart'

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SwitchComponentProvider(),
    )
  ], child: MyApp()));
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
