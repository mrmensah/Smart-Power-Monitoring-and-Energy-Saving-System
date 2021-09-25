import 'package:flutter/material.dart';

int componentNumber = 0;

class SwitchComponentProvider with ChangeNotifier {
  get returnSelectedComponent {
    return componentNumber;
  }

  void compoentNumber(int num) {
    componentNumber = num;
    notifyListeners();
  }
}
