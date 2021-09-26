import 'package:flutter/material.dart';

import '../gloabl_variables.dart';

List<DeviceModel> dummyData = [
  DeviceModel(
      uid: DateTime.now().toString(),
      name: "Television",
      voltageHistory: [],
      currentHistory: [],
      active: true,
      lastvoltage: 222.3),
  DeviceModel(
      uid: DateTime.now().toString(),
      name: "Light",
      voltageHistory: [],
      currentHistory: [],
      active: true,
      lastvoltage: 222.3),
  DeviceModel(
      uid: DateTime.now().toString(),
      name: "Fridge",
      voltageHistory: [],
      currentHistory: [],
      active: true,
      lastvoltage: 222.3),
  DeviceModel(
      uid: DateTime.now().toString(),
      name: "Electric Fence",
      voltageHistory: [],
      currentHistory: [],
      lastvoltage: 222.3),
];

class ActiveDeviceProvider with ChangeNotifier {
  get activeDevices {
    return dummyData.where((element) => element.active == true).toList();
  }

  get inactiveDevices {
    return dummyData.where((element) => element.active = !true).toList();
  }

  void changeState({required String uid, required BuildContext context}) {
    // Not the current condition to switch between conditions
    String device =
        dummyData[dummyData.indexWhere((element) => element.uid == uid)].name;
    dummyData[dummyData.indexWhere((element) => element.uid == uid)].active =
        !dummyData[dummyData.indexWhere((element) => element.uid == uid)]
            .active;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        width: 200,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: black,
        key: Key(DateTime.now().toString()),
        content: Text(
            '$device has been ${dummyData[dummyData.indexWhere((element) => element.uid == uid)].active ? "turned on." : "turned off."}')));
    notifyListeners();
  }
}

class DeviceModel {
  String name, uid;
  bool active;
  double lastvoltage, lastcurrent, kwh;
  List<ReadingHistory> voltageHistory;
  List<ReadingHistory> currentHistory;
  DeviceModel(
      {required this.name,
      required this.uid,
      this.active = false,
      required this.voltageHistory,
      required this.currentHistory,
      this.kwh = 0,
      this.lastcurrent = 0,
      required this.lastvoltage});
}

class ReadingHistory {
  double value;
  DateTime time;
  ReadingHistory({required this.value, required this.time});
}
