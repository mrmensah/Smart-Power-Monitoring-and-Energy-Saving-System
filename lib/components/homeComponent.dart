import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/widgets/chartWidget.dart';

String? val = "7";

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteBackground,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 0,
                    child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Dashboard",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: greenBackground,
                                    borderRadius: BorderRadius.circular(10)),
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      icon: Icon(
                                        Icons.arrow_drop_down_rounded,
                                        color: whiteBackground,
                                      ),
                                      focusColor: greenBackground,
                                      dropdownColor: greenBackground,
                                      style: TextStyle(color: whiteBackground),
                                      value: val,
                                      onChanged: (value) {
                                        setState(() {
                                          val = value as String?;
                                        });
                                      },
                                      items: [
                                        DropdownMenuItem(
                                          value: "7",
                                          child: Text(
                                            "Last 7 days",
                                          ),
                                          key: Key(DateTime.now().toString()),
                                        ),
                                        DropdownMenuItem(
                                          value: "30",
                                          child: Text("Last 30 days"),
                                          key: Key(DateTime.now().toString()),
                                        ),
                                        DropdownMenuItem(
                                          value: "1",
                                          child: Text("Last 12 months"),
                                          key: Key(DateTime.now().toString()),
                                        ),
                                      ]),
                                ),
                              ),
                            ],
                          )),
                    )),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: BarChartSample2(),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                  flex: 3,
                )
              ],
            )));
  }
}
