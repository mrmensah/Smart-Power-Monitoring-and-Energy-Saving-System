import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/providers/activeProvider.dart';
import 'package:keep/widgets/appliaceCard.dart';
import 'package:line_icons/line_icons.dart';
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
              child: devices.length == 0
                  ? Center(
                      child: Text(
                        "No active Devices",
                        style: GoogleFonts.damion(),
                      ),
                    )
                  : ListView.builder(
                      itemCount: devices.length,
                      addAutomaticKeepAlives: true,
                      key: Key(DateTime.now().toString()),
                      itemBuilder: (context, index) => Dismissible(
                        direction: DismissDirection.startToEnd,
                        key: Key(DateTime.now().toIso8601String()),
                        background: Container(
                          decoration: BoxDecoration(
                              color: Colors.red[900],
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(
                                LineIcons.trash,
                                color: whiteBackground,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                  "Switch of ${devices[index].name}",
                                  style: TextStyle(
                                    color: whiteBackground,
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        child: appliaceCard(
                            uid: devices[index].uid,
                            lastcurrent: 0.5,
                            lastvoltage: 225,
                            kwh: 15,
                            context: context,
                            appliance: devices[index].name,
                            active: devices[index].active),
                      ),
                    ))
        ],
      ),
    );
  }
}
