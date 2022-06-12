import 'package:flutter/material.dart';
import 'package:hyperpay_app_wallet/src/pages/abaut_page.dart';
import 'package:hyperpay_app_wallet/src/pages/edit_user_page.dart';
import 'package:hyperpay_app_wallet/src/pages/help_page.dart';
import 'package:hyperpay_app_wallet/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text("Pepe", style: Theme.of(context).textTheme.headline5),
            accountEmail: Text("pepito@gmail.com",
                style: Theme.of(context).textTheme.headline5),
            currentAccountPicture: const CircleAvatar(
              child: FlutterLogo(size: 48),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.manage_accounts_outlined,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              "Edit user",
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, EditUserPage.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              "Setting",
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, SettingsPage.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.help_outline,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              "Help",
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, HelpPage.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_page_outlined,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              "Abaut us",
              style: Theme.of(context).textTheme.headline4,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, AbautPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
