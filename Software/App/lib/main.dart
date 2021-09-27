import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keep/providers/activeProvider.dart';
import 'package:keep/providers/switchChart.dart';
import 'package:keep/providers/switchComponent.dart';
import 'package:keep/screens/launchingScreen.dart';
import 'package:provider/provider.dart';
import 'package:desktop_window/desktop_window.dart';

void main() async {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SwitchComponentProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SwitchChart(),
    ),
    ChangeNotifierProvider(
      create: (context) => ActiveDeviceProvider(),
    )
  ], child: MyApp()));
  if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
    await DesktopWindow.toggleFullScreen();
    await DesktopWindow.setMinWindowSize(Size(800, 400));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Power Monitor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(headline6: GoogleFonts.montserrat())),
      home: LaunchScreen(),
    );
  }
}
