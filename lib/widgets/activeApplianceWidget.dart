import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/widgets/appliaceCard.dart';

class ActiveAppliance extends StatelessWidget {
  const ActiveAppliance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Active Appliances",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                appliaceCard(
                    context: context,
                    appliance: "Light",
                    kwh: 12,
                    active: true),
                appliaceCard(
                    context: context,
                    appliance: "Television",
                    kwh: 5,
                    active: false),
                appliaceCard(
                    context: context,
                    appliance: "Fridge",
                    kwh: 8,
                    active: true),
                appliaceCard(
                    context: context,
                    appliance: "Electric Fence",
                    kwh: 10,
                    active: false),
              ],
            ),
          )
        ],
      ),
    );
  }
}
