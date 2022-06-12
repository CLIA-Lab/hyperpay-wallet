import 'package:flutter/material.dart';
import 'package:hyperpay_app_wallet/src/pages/abaut_page.dart';
import 'package:hyperpay_app_wallet/src/pages/edit_user_page.dart';
import 'package:hyperpay_app_wallet/src/pages/help_page.dart';
import 'package:hyperpay_app_wallet/src/pages/home_page.dart';
import 'package:hyperpay_app_wallet/src/pages/settings_page.dart';

void main() => runApp(HyperpayWallet());

class HyperpayWallet extends StatelessWidget {
  HyperpayWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hyperpay Wallet',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        HelpPage.routeName: (BuildContext context) => HelpPage(),
        AbautPage.routeName: (BuildContext context) => AbautPage(),
        EditUserPage.routeName: (BuildContext context) => EditUserPage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.indigo,
        primaryColorLight: Colors.lightBlue,
        primaryColorDark: Colors.indigo,
        focusColor: Colors.indigo,
        hoverColor: Colors.blueGrey[100],
        splashColor: Colors.white24,
        textTheme: TextTheme(
          headline1: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
          headline2: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
          ),
          headline5: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          headline6: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
