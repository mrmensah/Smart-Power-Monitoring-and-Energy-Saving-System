import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/screens/login.dart';
import 'package:line_icons/line_icons.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  List<bool> selected = [true, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 300,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: lightBackground, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
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
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                cardSelects(
                    label: 'Cost',
                    destination: () {
                      setState(() {
                        selected = [false, true, false, false, false];
                      });
                    },
                    icon: Icon(LineIcons.moneyBill),
                    isSelected: selected[1]),
                SizedBox(
                  height: 10,
                ),
                cardSelects(
                    label: 'Appliances',
                    destination: () {
                      setState(() {
                        selected = [false, false, true, false, false];
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
                      });
                    },
                    icon: Icon(Icons.settings),
                    isSelected: selected[4])
              ],
            ),
          ),
          cardSelects(
              label: "Logout",
              destination: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              icon: Icon(Icons.exit_to_app),
              isSelected: false)
        ],
      ),
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
    required bool isSelected}) {
  return InkWell(
    onTap: destination,
    child: Card(
      child: Container(
        width: 280,
        height: 50,
        child: ListTile(
          leading: icon,
          title: Text(label),
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
