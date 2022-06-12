import 'package:flutter/material.dart';

class SellPage extends StatefulWidget {
  SellPage({Key? key}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Sell",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
