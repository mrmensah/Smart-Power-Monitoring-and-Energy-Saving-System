import 'package:flutter/material.dart';
import 'package:keep/components/applianceComponent.dart';
import 'package:keep/components/registrationComponent.dart';
import 'package:keep/components/groupsComponent.dart';
import 'package:keep/components/homeComponent.dart';
import 'package:keep/components/settingComponent.dart';
import 'package:keep/gloabl_variables.dart';
import 'package:keep/providers/switchComponent.dart';
import 'package:keep/widgets/sideMenu.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> components = [
      HomeComponent(),
      RegisterComponent(),
      applianceComponent(context),
      groupComponent(context),
      settingComponent(context)
    ];
    Widget _widget = components[
        Provider.of<SwitchComponentProvider>(context).returnSelectedComponent];

    return Scaffold(
      backgroundColor: whiteBackground,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [SideMenu(), _widget],
        ),
      ),
    );
  }
}
