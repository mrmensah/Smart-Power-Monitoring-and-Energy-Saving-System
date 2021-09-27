import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/providers/switchComponent.dart';
import 'package:keep/screens/login.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

List<bool> selected = [true, false, false, false, false];

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.heightConstraints().maxHeight < 700) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: 300,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: lightBackground,
                borderRadius: BorderRadius.circular(10)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  title(),
                  SizedBox(
                    height: 10,
                  ),
                  profilePicture(),
                  SizedBox(
                    height: 30,
                  ),
                  cardSelects(
                    isSelected: selected[0],
                    icon: Icon(LineIcons.home),
                    label: 'Dashboard',
                    destination: () {
                      setState(() {
                        selected = [true, false, false, false, false];
                        Provider.of<SwitchComponentProvider>(context,
                                listen: false)
                            .compoentNumber(0);
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Register Device',
                      destination: () {
                        setState(() {
                          selected = [false, true, false, false, false];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(1);
                        });
                      },
                      icon: Image.asset(
                        'assets/img/new.png',
                        height: 25,
                        width: 25,
                      ),
                      isSelected: selected[1]),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Appliances',
                      destination: () {
                        setState(() {
                          selected = [false, false, true, false, false];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(2);
                        });
                      },
                      icon: Icon(LineIcons.lightbulb),
                      isSelected: selected[2]),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Groups',
                      destination: () {
                        setState(() {
                          selected = [false, false, false, true, false];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(3);
                        });
                      },
                      icon: Icon(LineIcons.gripHorizontal),
                      isSelected: selected[3]),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Settings',
                      destination: () {
                        setState(() {
                          selected = [false, false, false, false, true];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(4);
                        });
                      },
                      icon: Icon(Icons.settings),
                      isSelected: selected[4]),
                  cardSelects(
                      label: "Logout",
                      textColor: whiteBackground,
                      color: greenBackground,
                      destination: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      icon: Icon(
                        Icons.exit_to_app,
                        color: whiteBackground,
                      ),
                      isSelected: false)
                ],
              ),
            ),
          );
        }

        return Container(
          height: MediaQuery.of(context).size.height,
          width: 300,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: lightBackground, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  title(),
                  SizedBox(
                    height: 10,
                  ),
                  profilePicture(),
                  SizedBox(
                    height: 30,
                  ),
                  cardSelects(
                    isSelected: selected[0],
                    icon: Icon(LineIcons.home),
                    label: 'Dashboard',
                    destination: () {
                      setState(() {
                        selected = [true, false, false, false, false];
                        Provider.of<SwitchComponentProvider>(context,
                                listen: false)
                            .compoentNumber(0);
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Register Device',
                      destination: () {
                        setState(() {
                          selected = [false, true, false, false, false];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(1);
                        });
                      },
                      icon: Image.asset(
                        'assets/img/new.png',
                        height: 25,
                        width: 25,
                      ),
                      isSelected: selected[1]),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Appliances',
                      destination: () {
                        setState(() {
                          selected = [false, false, true, false, false];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(2);
                        });
                      },
                      icon: Icon(LineIcons.lightbulb),
                      isSelected: selected[2]),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Groups',
                      destination: () {
                        setState(() {
                          selected = [false, false, false, true, false];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(3);
                        });
                      },
                      icon: Icon(LineIcons.gripHorizontal),
                      isSelected: selected[3]),
                  SizedBox(
                    height: 10,
                  ),
                  cardSelects(
                      label: 'Settings',
                      destination: () {
                        setState(() {
                          selected = [false, false, false, false, true];
                          Provider.of<SwitchComponentProvider>(context,
                                  listen: false)
                              .compoentNumber(4);
                        });
                      },
                      icon: Icon(Icons.settings),
                      isSelected: selected[4])
                ],
              ),
              cardSelects(
                  label: "Logout",
                  textColor: whiteBackground,
                  color: greenBackground,
                  destination: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  icon: Icon(
                    Icons.exit_to_app,
                    color: whiteBackground,
                  ),
                  isSelected: false)
            ],
          ),
        );
      },
    );
  }
}

Widget title() {
  return Container(
    height: 50,
    width: 280,
    alignment: Alignment.center,
    child: Text(
      "Power Monitor",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    decoration: BoxDecoration(
        color: whiteBackground, borderRadius: BorderRadius.circular(10)),
  );
}

Widget profilePicture() {
  return Container(
    width: 280,
    height: 200,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: light_darker_Background,
          radius: 60,
        ),
        Container(
          width: 280,
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Mr Mensah",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        )
      ],
    ),
    decoration: BoxDecoration(
        color: whiteBackground, borderRadius: BorderRadius.circular(10)),
  );
}

Widget cardSelects(
    {required String label,
    required VoidCallback destination,
    required Widget? icon,
    required bool isSelected,
    Color textColor = Colors.black,
    Color color = whiteBackground}) {
  return InkWell(
    onTap: destination,
    child: Card(
      color: color,
      child: Container(
        width: 280,
        height: 50,
        child: ListTile(
          leading: icon,
          title: Text(
            label,
            style: TextStyle(color: textColor),
          ),
          trailing: isSelected
              ? Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: greenBackground,
                      borderRadius: BorderRadius.circular(100)),
                )
              : Container(
                  height: 10,
                  width: 10,
                ),
        ),
      ),
    ),
  );
}
