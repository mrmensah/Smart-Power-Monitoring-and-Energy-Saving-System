import 'package:flutter/material.dart';

int chartState = 7;

class SwitchChart with ChangeNotifier {
  get returnChartState {
    return chartState;
  }

  void change(value) {
    chartState = value;
    notifyListeners();
  }
}
