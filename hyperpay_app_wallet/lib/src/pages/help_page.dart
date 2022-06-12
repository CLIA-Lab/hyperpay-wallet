import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  HelpPage({Key? key}) : super(key: key);
  static final String routeName = "help";

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Text(
          "Help",
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
