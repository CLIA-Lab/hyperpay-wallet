import 'package:flutter/material.dart';

class EditUserPage extends StatefulWidget {
  EditUserPage({Key? key}) : super(key: key);
  static final String routeName = "edit user";

  @override
  State<EditUserPage> createState() => _EditUserPageState();
}

class _EditUserPageState extends State<EditUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Text(
          "Edit User",
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
