import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:line_icons/line_icons.dart';

Widget sideMenu(BuildContext context) {
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
              isSelected: true,
              icon: Icon(LineIcons.home),
              label: 'Dashboard',
              destination: () {},
            ),
            SizedBox(
              height: 10,
            ),
            cardSelects(
                label: 'Cost',
                destination: () {},
                icon: Icon(LineIcons.moneyBill),
                isSelected: false),
            SizedBox(
              height: 10,
            ),
            cardSelects(
                label: 'Appliances',
                destination: () {},
                icon: Icon(LineIcons.lightbulb),
                isSelected: false),
            SizedBox(
              height: 10,
            ),
            cardSelects(
                label: 'Groups',
                destination: () {},
                icon: Icon(LineIcons.gripHorizontal),
                isSelected: false),
            SizedBox(
              height: 10,
            ),
            cardSelects(
                label: 'Settings',
                destination: () {},
                icon: Icon(Icons.settings),
                isSelected: false)
          ],
        ),
        cardSelects(
            label: "Logout",
            destination: () {},
            icon: Icon(Icons.exit_to_app),
            isSelected: false)
      ],
    ),
  );
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
  return Card(
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
  );
}
