import 'package:flutter/material.dart';
import 'package:keep/widgets/power.dart';

class PowerEstimate extends StatelessWidget {
  const PowerEstimate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Usage Estimate(kW)",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Avg kW: 2032.32 kW",
                  style: TextStyle(
                      color: Colors.grey[300], fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // PowerEstimateWidget()
          Expanded(flex: 1, child: PowerEstimateWidget())
        ],
      ),
    );
  }
}
