import 'package:flutter/material.dart';

class BalancePage extends StatefulWidget {
  BalancePage({Key? key}) : super(key: key);

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Balance",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
