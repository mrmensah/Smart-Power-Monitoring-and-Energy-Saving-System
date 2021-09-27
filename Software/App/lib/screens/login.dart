import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/screens/home.dart';
import 'package:keep/widgets/button.dart';
import 'package:keep/widgets/textField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController username;
  late TextEditingController password;
  @override
  void initState() {
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    username.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackground,
      body: LayoutBuilder(
        builder: (context, constraints) {
          // if(constraints.widthConstraints())
          print(constraints.widthConstraints().maxWidth);
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bg.png'),
                    alignment: Alignment.centerRight)),
            child: Container(
              margin: const EdgeInsets.only(left: 200),
              child: Card(
                elevation: 1,
                child: Container(
                  height: 550,
                  width: 400,
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Power Monitor",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      textField(
                          isPassword: false,
                          label: "Username",
                          onSubmit: () {},
                          controller: username),
                      SizedBox(
                        height: 50,
                      ),
                      textField(
                          isPassword: true,
                          label: "Password",
                          onSubmit: () {},
                          controller: password),
                      SizedBox(
                        height: 50,
                      ),
                      button(
                        label: 'Login',
                        color: greenBackground,
                        onPressed: () {
                          print("Login Button Clicked");
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
