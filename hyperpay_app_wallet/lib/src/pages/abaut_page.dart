import 'package:flutter/material.dart';

class AbautPage extends StatefulWidget {
  AbautPage({Key? key}) : super(key: key);
  static final String routeName = "abaut us";

  @override
  State<AbautPage> createState() => _AbautPageState();
}

class _AbautPageState extends State<AbautPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Text(
          "Abaut us",
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
