import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);
  static final String routeName = "settings";

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Text(
          "Settings",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        "Hyperpay",
        style: Theme.of(context).textTheme.headline1,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () => {},
          padding: EdgeInsets.all(10),
          icon: Icon(Icons.exit_to_app_outlined),
          splashRadius: 22,
        ),
      ],
    );
  }
}
