import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/screens/login.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenBackground,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: greenBackground,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Power Monitor",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 70,
                  color: whiteBackground),
            ),
            Center(
                child: CircularProgressIndicator.adaptive(
              backgroundColor: whiteBackground,
              strokeWidth: 3,
            ))
          ],
        ),
      ),
    );
  }
}
