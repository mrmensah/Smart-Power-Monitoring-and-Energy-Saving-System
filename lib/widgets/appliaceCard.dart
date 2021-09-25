import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:line_icons/line_icons.dart';

Widget appliaceCard(
    {required BuildContext context,
    required String appliance,
    required bool active,
    double kwh = 0}) {
  return Padding(
    padding: const EdgeInsets.all(1),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: black,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    appliance,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: whiteBackground,
                        fontSize: 18),
                  ),
                  customToggleSwitch(active: active)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    LineIcons.powerOff,
                    color: whiteBackground,
                    size: 30,
                  ),
                  Text(
                    '$kwh kW',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: whiteBackground),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteBackground),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(LineIcons.lightningBolt),
                      Text(
                        "225.2V",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.bolt_outlined),
                      Text(
                        "2.2A",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget customToggleSwitch({required bool active}) {
  return Container(
    height: 30,
    width: 60,
    decoration: BoxDecoration(
        color: whiteBackground, borderRadius: BorderRadius.circular(5)),
    child: active
        ? Row(
            // This is for the active state
            children: [
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Text(
                  'On'.toUpperCase(),
                  style: TextStyle(
                      color: black, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  color: greenBackground,
                ),
              ))
            ],
          )
        : Row(
            // this is for the inactive state
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                  color: Colors.red,
                ),
              )),
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Text(
                  'Off'.toUpperCase(),
                  style: TextStyle(
                      color: black, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
  );
}
