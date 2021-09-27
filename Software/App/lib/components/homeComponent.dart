import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/providers/switchChart.dart';
import 'package:keep/widgets/activeApplianceWidget.dart';
import 'package:keep/widgets/chartMonthWidget.dart';
import 'package:keep/widgets/chartWeekWidget.dart';
import 'package:keep/widgets/chartYearWidget.dart';
import 'package:keep/widgets/powerEstimate.dart';
import 'package:provider/provider.dart';

String? val = "7";

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<SwitchChart>(context).returnChartState;
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
                                      onChanged: (String? value) {
                                        setState(() {
                                          val = value;
                                        });
                                        // this is used to change the state of the chart
                                        Provider.of<SwitchChart>(context,
                                                listen: false)
                                            .change(int.parse(value!));
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
                    child: state == 7
                        ? BarChartSample2()
                        : state == 30
                            ? ChartMonth()
                            : ChartYear(),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Card(
                            elevation: 0.5,
                            child: ActiveAppliance(
                              key: Key(DateTime.now().toString()),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Card(
                            child: PowerEstimate(),
                          )),
                      Expanded(
                          flex: 3,
                          child: Card(
                            child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Cost",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                        color: greenBackground),
                                  ),
                                  Text(
                                    "GH¢ 100.12",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ],
                              ),
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  // color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ))
                    ],
                  ),
                  flex: 3,
                )
              ],
            )));
  }
}
