import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  PayPage({Key? key}) : super(key: key);

  @override
  State<PayPage> createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Pay",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
