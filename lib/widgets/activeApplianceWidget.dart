import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/providers/activeProvider.dart';
import 'package:keep/widgets/appliaceCard.dart';
import 'package:provider/provider.dart';

class ActiveAppliance extends StatelessWidget {
  const ActiveAppliance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DeviceModel> devices =
        Provider.of<ActiveDeviceProvider>(context).activeDevices;
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
              // Use provider to render these widgets
              child: ListView.builder(
            itemCount: devices.length,
            itemBuilder: (context, index) => appliaceCard(
                context: context,
                appliance: devices[index].name,
                active: devices[index].active),
          ))
        ],
      ),
    );
  }
}
