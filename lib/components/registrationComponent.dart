import 'package:flutter/material.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/providers/switchComponent.dart';
import 'package:keep/widgets/button.dart';
import 'package:keep/widgets/sideMenu.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

late TextEditingController uid;
late TextEditingController connected;
late TextEditingController group;

class RegisterComponent extends StatefulWidget {
  const RegisterComponent({Key? key}) : super(key: key);

  @override
  _RegisterComponentState createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent> {
  var select = '';
  @override
  void initState() {
    super.initState();
    uid = TextEditingController();
    connected = TextEditingController();
    group = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    uid = TextEditingController();
    connected = TextEditingController();
    group = TextEditingController();
  }

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
                Container(
                    // flex: 1,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Register Smart Socket",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                    )),
                Container(
                  height: 650,
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      width: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('UID',
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22)),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: uid,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color:
                                                      light_darker_Background,
                                                  width: 1)),
                                          labelText: 'Socket UID'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            height: 180,
                            // color: ,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 350,
                                  // color: black,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      'What\'s going to be connected to this socket?',
                                      textAlign: TextAlign.justify,
                                      maxLines: null,
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22)),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: connected,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                  color:
                                                      light_darker_Background,
                                                  width: 1)),
                                          labelText: 'Device Name'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            height: 220,
                            // color: ,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 350,
                                  // color: black,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "Would you like to add this Smart Socket to an already Existing group, select the The group from the drop-down ?",
                                      textAlign: TextAlign.justify,
                                      maxLines: null,
                                      style: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22)),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Card(
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              color: black,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton(
                                                icon: Icon(
                                                  Icons.arrow_drop_down,
                                                  color: whiteBackground,
                                                  size: 30,
                                                ),
                                                dropdownColor: black,
                                                style: TextStyle(
                                                    color: whiteBackground),
                                                isExpanded: true,
                                                value: select,
                                                onChanged: (value) {
                                                  setState(() {
                                                    select = value.toString();
                                                  });
                                                },
                                                items: [
                                                  DropdownMenuItem(
                                                      value: '',
                                                      child: Text(
                                                          "Select a group")),
                                                  DropdownMenuItem(
                                                      value: 'light',
                                                      child:
                                                          Text("Light Group")),
                                                  DropdownMenuItem(
                                                      value: 'fan',
                                                      child: Text("Fan Group"))
                                                ]),
                                          ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          button(
                              label: 'Register Device',
                              onPressed: () {
                                if (connected.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          backgroundColor: Colors.red[900],
                                          content: Text(
                                              "All fields must be filled")));
                                } else if (uid.text.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          backgroundColor: Colors.red[900],
                                          content: Text(
                                              "All fields must be filled")));
                                } else {
                                  showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) => AlertDialog(
                                      content: Text(
                                          'Smart Socket(${connected.text}) has been added successfully.'),
                                      actions: [
                                        button(
                                            label: 'Okay',
                                            color: greenBackground,
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Provider.of<SwitchComponentProvider>(
                                                      context,
                                                      listen: false)
                                                  .compoentNumber(0);
                                              selected = [
                                                true,
                                                false,
                                                false,
                                                false,
                                                false
                                              ];
                                            })
                                      ],
                                    ),
                                  );
                                }
                              },
                              color: black)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
