import 'package:flutter/material.dart';

List<DeviceModel> dummyData = [
  DeviceModel(
      name: "Television",
      voltageHistory: [],
      currentHistory: [],
      lastvoltage: 222.3),
  DeviceModel(
      name: "Light",
      voltageHistory: [],
      currentHistory: [],
      lastvoltage: 222.3),
  DeviceModel(
      name: "Fridge",
      voltageHistory: [],
      currentHistory: [],
      lastvoltage: 222.3),
  DeviceModel(
      name: "Electric Fence",
      voltageHistory: [],
      currentHistory: [],
      lastvoltage: 222.3),
];

class ActiveDeviceProvider with ChangeNotifier {}

class DeviceModel {
  String name;
  bool active;
  double lastvoltage, lastcurrent;
  List<ReadingHistory> voltageHistory;
  List<ReadingHistory> currentHistory;
  DeviceModel(
      {required this.name,
      this.active = false,
      required this.voltageHistory,
      required this.currentHistory,
      this.lastcurrent = 0,
      required this.lastvoltage});
}

class ReadingHistory {
  double value;
  DateTime time;
  ReadingHistory({required this.value, required this.time});
}
